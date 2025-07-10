import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/data/assets_Path.dart';
import 'package:grocery_app/app/modules/widget/background_image.dart';
import 'package:grocery_app/app/modules/widget/custom_button.dart';

import '../../../data/app_text_style.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Welcome to', style: AppTextStyle.regular30),
                      SizedBox(
                        height: 50,
                        width: 130,
                        child: Image.asset(AssetsPath.bigCart),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                        style: AppTextStyle.medium15,
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      CustomButton(onPressed: () {}, buttonText: 'Get started'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
