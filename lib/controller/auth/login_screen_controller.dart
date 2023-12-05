import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final keys = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool passwordObscure = true.obs;


  void onEyeClick(){
    passwordObscure.value = !passwordObscure.value;
  }
}
