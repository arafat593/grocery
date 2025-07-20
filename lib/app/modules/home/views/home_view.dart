import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/data/app_text_style.dart';
import 'package:grocery_app/app/data/assets_path.dart';
import 'package:grocery_app/app/modules/category/views/category_view.dart';
import 'package:grocery_app/app/modules/products/views/products_view.dart';

import '../controllers/home_controller.dart';
import 'custom_product_cart.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final List<Map<dynamic, dynamic>> homeCategoryList = [
    {
      'image': AssetsPath.homeIcon1,
      'color': AppColor.greenLight,
      'name': 'Vegetables',
    },
    {
      'image': AssetsPath.homeIcon2,
      'color': AppColor.redLight,
      'name': 'Fruits',
    },
    {
      'image': AssetsPath.homeIcon3,
      'color': AppColor.orangeLight,
      'name': 'Beverages',
    },
    {
      'image': AssetsPath.homeIcon4,
      'color': AppColor.purpleLight,
      'name': 'Grocery',
    },
    {
      'image': AssetsPath.homeIcon5,
      'color': AppColor.blueLight,
      'name': 'Edible oil',
    },
    {
      'image': AssetsPath.homeIcon6,
      'color': AppColor.pinkLight,
      'name': 'Household',
    },
    {
      'image': AssetsPath.homeIcon1,
      'color': AppColor.greenLight,
      'name': 'Vegetables',
    },
    {
      'image': AssetsPath.homeIcon2,
      'color': AppColor.redLight,
      'name': 'Fruits',
    },
    {
      'image': AssetsPath.homeIcon3,
      'color': AppColor.orangeLight,
      'name': 'Beverages',
    },
    {
      'image': AssetsPath.homeIcon4,
      'color': AppColor.purpleLight,
      'name': 'Grocery',
    },
    {
      'image': AssetsPath.homeIcon5,
      'color': AppColor.blueLight,
      'name': 'Edible oil',
    },
    {
      'image': AssetsPath.homeIcon6,
      'color': AppColor.pinkLight,
      'name': 'Household',
    },
  ];
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: AppColor.backGroundF5,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search',
              suffixIcon: Icon(Icons.settings_outlined),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [AppColor.whiteColor, AppColor.backGroundF5],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset(AssetsPath.homeMaskGroup),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Categories', style: AppTextStyle.bold18),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => CategoryView());
                          },
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    height: 100,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: homeCategoryList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 16,top: 8),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: homeCategoryList[index]['color'],
                                child: SvgPicture.asset(
                                  homeCategoryList[index]['image'],
                                ),
                              ),
                            ),
                            Text(homeCategoryList[index]['name']), 
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text('Featured products', style: AppTextStyle.bold18),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ProductsView());
                          },
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  ),
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
          ),
        ),
      ),
    );
  }
}
