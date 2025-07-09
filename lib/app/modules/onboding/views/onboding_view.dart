import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboding_controller.dart';

class OnbodingView extends GetView<OnbodingController> {
  const OnbodingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnbodingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OnbodingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
