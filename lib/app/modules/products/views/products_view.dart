import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_color.dart';
import '../../../data/assets_path.dart';
import '../../home/views/custom_product_cart.dart';
import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
   ProductsView({super.key});
  final List<Map<String, dynamic>> homeProductsList = [
    {'image': AssetsPath.homeProducts1, 'color': AppColor.pinkLight},
    {'image': AssetsPath.homeProducts2, 'color': AppColor.yellowLight},
    {'image': AssetsPath.homeProducts3, 'color': AppColor.orangeLight},
    {'image': AssetsPath.homeProducts4, 'color': AppColor.pinkLight},
    {'image': AssetsPath.homeProducts5, 'color': AppColor.pinkLight},
    {'image': AssetsPath.homeProducts6, 'color': AppColor.greenLight},
    {'image': AssetsPath.homeProducts1, 'color': AppColor.pinkLight},
    {'image': AssetsPath.homeProducts2, 'color': AppColor.yellowLight},
    {'image': AssetsPath.homeProducts3, 'color': AppColor.orangeLight},
    {'image': AssetsPath.homeProducts4, 'color': AppColor.pinkLight},
    {'image': AssetsPath.homeProducts5, 'color': AppColor.pinkLight},
    {'image': AssetsPath.homeProducts6, 'color': AppColor.greenLight},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundF9,
      appBar: AppBar(title: const Text('Vegetables'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined))
        ],),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                itemCount: homeProductsList.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .75,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) => CustomProductCart(
                  color: homeProductsList[index]['color'],
                  image: homeProductsList[index]['image'],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
