import 'package:flutter/material.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/data/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  const CustomButton({super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [AppColor.primaryColor,AppColor.primaryDark]),
                color: AppColor.primaryColor,
            ),
            child: Center(child: Text(buttonText,style: AppTextStyle.medium15.copyWith(color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
