import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project14/controller/auth/login_screen_controller.dart';
import 'package:project14/utils/colors.dart';
import 'package:project14/utils/custom_text_style.dart';
import 'package:project14/views/auth/register_screen.dart';
import 'package:project14/widgets/custom/custom_text_fields.dart';
import 'package:project14/widgets/custom/elevated_button.dart';

import '../../widgets/custom/custom_password_fields.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});


  final c = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height / 3,
                width: double.infinity,
                child: const Image(
                  image: AssetImage("assets/images/doctors.png"),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log In",
                      style: CustomTextStyles.f24W600(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Please sign in to continue",
                      style: CustomTextStyles.f14W400(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email Address",
                      style: CustomTextStyles.f14W400(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(
                      hint: "Email",
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: CustomTextStyles.f14W400(),
                    ),
                    Obx(
                      () => CustomPasswordField(
                        hint: "Password",
                        eye: c.passwordObscure.value,
                        onEyeClick: c.onEyeClick,
                        controller: c.passwordController,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: CustomTextStyles.f14W400(
                              color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomElevatedButton(
                      title: "Login",
                      onTap: () {
                        // Get.offAll(() => SplashScreen());
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomElevatedButton(
                      title: "Login with otp",
                      onTap: () {
                        // Get.to(() => SplashScreen());
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have a account ? ",
                          style: CustomTextStyles.f14W400(),
                        ),
                        InkWell(
                          onTap: () {
                            // Get.off(() => LogInScreen());
                          },
                          child: InkWell(
                            onTap: () {
                              Get.to(() => RegisterScreen());
                            },
                            child: Text(
                              "Create one",
                              style: CustomTextStyles.f14W400(
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
