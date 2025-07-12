import 'dart:async';

import 'package:get/get.dart';

import '../../../data/assets_Path.dart';

class SplashController extends GetxController {
  final List<String> images = [
    AssetsPath.splashScreen1,
    AssetsPath.splashScreen2,
    AssetsPath.splashScreen3,
    AssetsPath.splashScreen4,
  ];

  RxInt index = 0.obs;

  void splashIndex(int indexS) {
    if (index.value < images.length-1) {
      index.value++;
    }
    update();
  }

  void onInit() {
    super.onInit();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Timer.periodic(Duration(seconds: 5),(timer){
    if(index.value < images.length-1){
    index.value++;
    } else {
    index.value = 0;
    }
    });
  }
}
