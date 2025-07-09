import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:grocery_app/app/data/assets_Path.dart';
import 'package:grocery_app/app/modules/widget/background_image.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        backgroundImage: AssetsPath.splashScreen1,
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Get Started')),
          ],
        ),
      ),
    );
  }
}
