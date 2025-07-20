import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/app_color.dart';
import '../../../data/app_text_style.dart';
import '../../../data/assets_path.dart';

class CustomProductCart extends StatelessWidget {
  final Color color;
  final String image;
  const CustomProductCart({
    super.key, required this.color, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: 180,
            height: 110,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 45,
                  child: Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 45,
                  child: Image.asset(
                    height: 80,
                    width: 90,
                      image
                  ),
                ),
              ],
            ),
          ),
          Text('\$8.00', style: AppTextStyle.regular12),
          Text('Fresh Peach', style: AppTextStyle.medium15,overflow: TextOverflow.ellipsis,),
          Text(
            'dozen',
            style: AppTextStyle.regular14.copyWith(
              color: AppColor.textColor,
            ),
          ),
          Divider(),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsPath.addCart,height: 20,width: 20,),
              Text('Add to cart', style: AppTextStyle.medium15),
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}