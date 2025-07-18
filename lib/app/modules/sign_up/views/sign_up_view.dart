import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/modules/widget/custom_auth.dart';
import 'package:grocery_app/app/modules/widget/custom_button.dart';
import '../../../data/assets_path.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetsPath.portraitFemalePerson, fit: BoxFit.cover),
          CustomAuth(
            title: 'Create Account',
            description: 'Quickly create account',
            onBottomButton: (){},
            appBarTitle: 'Welcome',
            bottomText: 'Already have an account ?',
            bottomButtonText: 'Login',
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Email Address',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined),
                  hintText: 'Phone Number',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                ),
              ),
              CustomButton(onPressed: (){}, buttonText: 'Sign Up')
            ],
          ),
          ]
      )
    );
  }
}
