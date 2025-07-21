import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/modules/cart/views/cart_view.dart';
import 'package:grocery_app/app/modules/category/views/category_view.dart';
import 'package:grocery_app/app/modules/home/views/home_view.dart';
import 'package:grocery_app/app/modules/products/views/products_view.dart';
import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
   BottomNavigationBarView({super.key});
  final List<Widget> pages = [
    HomeView(),
    CategoryView(),
    ProductsView(),
    CartView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value],),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        selectedItemColor: AppColor.blackColor,
        unselectedItemColor: AppColor.textColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: controller.currentIndex.value,
        onTap: (index) => controller.currentIndex(index),
      )),
    );
  }
}
