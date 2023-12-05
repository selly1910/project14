
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreenController extends GetxController {
  final keys = GlobalKey<FormState>();

  final nameController= TextEditingController();
  final phonenoController = TextEditingController();
  RxBool passwordObscure = true.obs;

}
