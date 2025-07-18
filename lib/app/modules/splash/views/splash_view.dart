import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/data/assets_path.dart';
import 'package:grocery_app/app/modules/welcome/views/welcome_view.dart';
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
          Obx(
            () => Image.asset(
              controller.images[controller.index.value],
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Welcome to', style: AppTextStyle.bold30),
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
                      SizedBox(
                        height: 50,
                        child: Center(
                          child: ListView.builder(
                            itemCount: controller.images.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                controller.splashIndex(index);//click korle image change hobe
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child:
                                Obx(() => Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: controller.index.value == index
                                        ? AppColor.primaryDark
                                        : AppColor.backGroundDC,
                                    shape: BoxShape.circle,
                                  ),
                                ),)

                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomButton(onPressed: () {
                        Get.to(()=>WelcomeView());
                      }, buttonText: 'Get started'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
