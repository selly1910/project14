import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project14/views/auth/login_screen.dart';
import 'package:project14/views/dashboard/dash_screen.dart';
import 'package:project14/views/dashboard/home_screen.dart';
import 'package:project14/views/dashboard/profile_screen.dart';
import 'package:project14/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LogInScreen(),
    );
  }
}
