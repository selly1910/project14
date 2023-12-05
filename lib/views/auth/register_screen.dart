import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project14/controller/auth/register_screen_controller.dart';
import 'package:project14/utils/validator.dart';
import 'package:project14/widgets/custom/custom_text_fields.dart';

import '../../widgets/custom/elevated_button.dart';
import '../splash_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final c = Get.put(RegisterScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RegisterPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.pink,
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              //key: keys,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                       // controller: nameController,
                        validator: Validators.checkEmailField,
                        hint: "Name",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.name),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        // controller: ,
                        validator: Validators.checkEmailField,
                        hint: "Email",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.name),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        // controller: emailController,
                        validator: Validators.checkEmailField,
                        hint: "Phone Number",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.name),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        // controller: emailController,
                        validator: Validators.checkEmailField,
                        hint: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.name),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              title: "Register",
              onTap: () {
                // if (keys.currentState!.validate()) {
                //   Get.offAll(SplashScreen());
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
