import 'dart:ui';

import 'package:flutter/material.dart';
import '../../data/app_text_style.dart';
class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBackTap;
  final VoidCallback? setting;
  final IconData? prefix;
  final IconData? suffix;
  final Color? color;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBackTap,
    this.setting, this.prefix  = Icons.arrow_back, this.suffix, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(onPressed: onBackTap, icon: Icon(prefix,color: color,)),
        Spacer(),
        Text(title, style: AppTextStyle.medium18.copyWith(color: color)),
        Spacer(),
        IconButton(onPressed: onBackTap, icon: Icon(suffix,color: color,))
      ],
    );
  }
}
