import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/data/assets_path.dart';
import 'package:grocery_app/app/modules/login/views/login_view.dart';
import 'package:grocery_app/app/modules/widget/custom_auth.dart';
import 'package:grocery_app/app/modules/widget/custom_button.dart';
import 'package:grocery_app/app/routes/app_pages.dart';
import '../controllers/welcome_controller.dart';
class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetsPath.welcomeImage, fit: BoxFit.cover),
          CustomAuth(
            title: 'Welcome',
            description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
            appBarTitle: 'Welcome',
            bottomText: 'Already have an account?',
            bottomButtonText: 'Login',
            onBottomButton: () {
              Get.toNamed(Routes.SIGN_UP);
            },
            children: [
              const SizedBox(height: 12),
              CustomButton(
                onPressed: () {},
                buttonText: 'Continue with Google',
                prefix: Icons.g_mobiledata_outlined,
                iconColor: Colors.black,
                textColor: Colors.black,
                isTrue: false,
              ),
              CustomButton(
                onPressed: () {
                  Get.toNamed(Routes.SIGN_UP);
                },
                buttonText: 'Create an account',
                prefix: Icons.account_circle_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
