import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project14/%20repo/login_repo.dart';
import 'package:project14/controller/core_controller.dart';
import 'package:project14/utils/custom_snack.dart';
import 'package:project14/utils/storage_keys.dart';
import 'package:project14/views/dashboard/dash_screen.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';

class LoginScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool passwordObscure = true.obs;

  final passwordController = TextEditingController();

  final emailController = TextEditingController();

  final loading = SimpleFontelicoProgressDialog(
      context: Get.context!, barrierDimisable: false);

  get onEyeClick => null;

  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  void onSubmit() async {
    if (formKey.currentState!.validate()) {
      loading.show(message: "Please wait ..");
      await LoginRepo.login(
        email: emailController.text,
        password: passwordController.text,
        onSuccess: (user, token) async {
          loading.hide();
          log("data aayo 1");
          final box = GetStorage();
          await box.write(StorageKeys.USER, json.encode(user.toJson()));
          await box.write(StorageKeys.ACCESS_TOKEN, token.toString());

          log("data save 1");
          Get.put(CoreController()).loadCurrentUser();
          Get.offAll(() => DashScreen());
          CustomSnackBar.success(title: "Login", message: "Login Successfull");
        },
        onError: (message) {
          loading.hide();
          CustomSnackBar.error(title: "Login", message: message);
        },
      );
    }
  }
}
