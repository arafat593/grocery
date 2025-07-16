import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/data/app_text_style.dart';

import '../../../data/assets_path.dart';
import '../../widget/custom_auth.dart';
import '../../widget/custom_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
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
            onBottomButton: () {},
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined,color: AppColor.textColor,),
                  fillColor: AppColor.whiteColor,
                  filled: true,
                  hintText: 'Email Address',
                  hintStyle: AppTextStyle.medium15.copyWith(color: AppColor.textColor,),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none
                  )
                ),
              ),
              const SizedBox(height: 12),
              CustomButton(
                onPressed: () {},
                buttonText: 'Login',),
            ],
          ),
        ],
      ),
    );
  }
}
