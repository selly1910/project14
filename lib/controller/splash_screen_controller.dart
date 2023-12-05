import 'dart:developer';

import 'package:get/get.dart';
import 'package:project14/views/auth/login_screen.dart';


class SplashScreenController extends GetxController {
  @override
  void onInit() {
    log("sakjhdkasdas");
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => LogInScreen());
    });
    super.onInit();
  }
}
