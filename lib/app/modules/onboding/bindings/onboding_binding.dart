import 'package:get/get.dart';

import '../controllers/onboding_controller.dart';

class OnbodingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnbodingController>(
      () => OnbodingController(),
    );
  }
}
