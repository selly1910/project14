import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project14/controller/dashboard/profile_screen_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

final c = Get.put(profilescreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProfilePage")),
     body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: (c.image.value != null)
                      ? Image.file(
                          c.image.value!,
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/common/logo-color.png",
                            fit: BoxFit.cover,
                            height: 120,
                            width: 120,
                          ))),
            ),
            const SizedBox(
              height: 17,
            ),
            TextButton(
              onPressed: c.pickImage,
              child: const Text(
                "Change Avatar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}