import 'package:flutter/material.dart';
import '../../data/app_color.dart';
import '../../data/app_text_style.dart';
import 'custom_app_bar.dart';
import 'custom_button.dart';

class CustomAuth extends StatelessWidget {
  final String appBarTitle;
  final String title;
  final String bottomText;
  final String bottomButtonText;
  final String description;
  final VoidCallback onBottomButton;
  final List<Widget> children;

  const CustomAuth({
    super.key,
    required this.title,
    required this.description,
    required this.onBottomButton,
    required this.children,
    required this.appBarTitle,
    required this.bottomText,
    required this.bottomButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        CustomAppBar(title: appBarTitle, color: AppColor.whiteColor),
        const Spacer(),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            color: AppColor.backGroundF9,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: AppTextStyle.medium25),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: AppTextStyle.light15.copyWith(color: AppColor.textColor),
              ),
              Column(children: children),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bottomText,
                    style: AppTextStyle.light15.copyWith(
                      color: AppColor.textColor,
                    ),
                  ),
                  TextButton(onPressed: onBottomButton, child: Text(bottomButtonText)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
