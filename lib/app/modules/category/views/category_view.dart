import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:grocery_app/app/modules/products/views/products_view.dart';

import '../../../data/app_color.dart';
import '../../../data/assets_path.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  CategoryView({super.key});

  final List<Map<dynamic, dynamic>> categoryList = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundF9,
      appBar: AppBar(title: const Text('Category'),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined))
      ],),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                itemCount: categoryList.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: .85,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.to(() => ProductsView());
                  },
                  child: Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Center(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: categoryList[index]['color'],
                              child: SvgPicture.asset(
                                categoryList[index]['image'],
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                        Text(categoryList[index]['name'],overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
