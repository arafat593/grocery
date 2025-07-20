import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/data/app_text_style.dart';
import 'package:grocery_app/app/routes/app_pages.dart';
import '../../../data/assets_path.dart';
import '../../widget/custom_auth.dart';
import '../../widget/custom_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetsPath.loginScreen, fit: BoxFit.cover),
          CustomAuth(
            appBarTitle: 'Welcome',
            title: 'Welcome back !',
            description: 'Sign in to your account',
            bottomText: 'Don’t have an account ?',
            bottomButtonText: 'Sign up',
            onBottomButton: () {
              Get.toNamed(Routes.SIGN_UP);
            },
            children: [
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: AppColor.textColor,
                  ),
                  hintText: 'Email Address',
                  hintStyle: AppTextStyle.medium15.copyWith(
                    color: AppColor.textColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: AppColor.textColor,
                  ),
                  hintText: 'Email Address',
                  hintStyle: AppTextStyle.medium15.copyWith(
                    color: AppColor.textColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => controller.toggle(),
                      child: Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: controller.isSwitched.value ? AppColor.primaryColor : AppColor.backGroundF9 ,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColor.textColor),
                        ),
                        child: AnimatedAlign(
                          alignment: controller.isSwitched.value
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          duration: Duration(microseconds: 200),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColor.textColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('Remember me', style: AppTextStyle.medium15),
                    Spacer(),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Forgot Password',
                        style: AppTextStyle.medium15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              CustomButton(
                onPressed: () {
                  Get.offNamed(Routes.HOME);
                },
                buttonText: 'Login',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
