import 'package:flutter/material.dart';
import 'package:grocery_app/app/data/app_color.dart';
import 'package:grocery_app/app/data/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  final IconData? prefix;
  final IconData? suffix;
  final Color textColor;
  final Color iconColor;
  final bool isTrue;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.prefix,
    this.isTrue = true,
    this.textColor = AppColor.whiteColor,
    this.suffix, this.iconColor = AppColor.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: isTrue
                ? BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColor.primaryColor, AppColor.primaryDark],
                    ),
                    borderRadius: BorderRadius.circular(6),
                  )
                : BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(prefix, color: iconColor),
                  Text(
                    buttonText,
                    style: AppTextStyle.medium15.copyWith(color: textColor),
                  ),
                  Icon(suffix, color: iconColor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
