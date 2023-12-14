import 'dart:async';

import 'package:get/get.dart';
import 'package:project14/controller/core_controller.dart';
import 'package:project14/views/auth/login_screen.dart';
import 'package:project14/views/dashboard/dash_screen.dart';

class SplashScreenController extends GetxController {
  final c = Get.put(CoreController());

  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () async {
      //   if (c.isUserLoggedIn()) {
      //    Get.offAll(() => DashScreen());
      //   } else {
      //  Get.offAll(() => LogInScreen());
      //   }

      Get.offAll(() => LogInScreen());
    });
    super.onInit();
  }
}
