import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project14/%20repo/register_repo.dart';
import 'package:project14/utils/custom_snack.dart';
import 'package:project14/views/auth/login_screen.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';

class RegisterScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();

  RxBool passwordObscure = true.obs;

  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  void onEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  final loading = SimpleFontelicoProgressDialog(
      context: Get.context!, barrierDimisable: false);

  void onSubmit() async {
    if (formKey.currentState!.validate()) {
      // loading.show(message: "Please wait ..");
      await RegisterRepo.register(
        email: emailController.text,
        phoneNumber: phoneNumberController.text,
        name: nameController.text,
        password: passwordController.text,
        onSuccess: (message) async {
          // loading.hide();
          CustomSnackBar.success(
              title: "Register", message: "Register Successfull");
          Get.offAll(() => LogInScreen());
        },
        onError: (message) {
          // loading.hide();
          CustomSnackBar.error(title: "Login", message: message);
        },
      );
    }
  }
}
