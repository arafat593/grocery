import 'dart:ffi';

import 'package:get/get.dart';

class LoginController extends GetxController {
  var isSwitched = false.obs;

  void toggle() {
    isSwitched.value = !isSwitched.value;
  }
}
