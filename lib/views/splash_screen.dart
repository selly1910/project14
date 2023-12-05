import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final c = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 300,
            child: Image(image: AssetImage("assets/images/doctors.png")),
          ),
          Center(
            child: CupertinoActivityIndicator(radius: 15),
          )
          // CircularProgressIndicator()
        ],
      ),
    );
  }
}
