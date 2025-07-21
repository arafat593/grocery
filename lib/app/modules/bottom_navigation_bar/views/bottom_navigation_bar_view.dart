import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Center(
          child: Text(
            'Current Page Index: ${controller.currentIndex}',
            style: const TextStyle(fontSize: 24),
          ),
        );
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
        currentIndex: controller.currentIndex.value,
        onTap: (index) => controller.currentIndex(index),
      )),
    );
  }
}
