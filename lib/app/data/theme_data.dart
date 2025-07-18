import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_text_style.dart';

ThemeData themeData() {
  return ThemeData(
    fontFamily: 'poppins',
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: AppColor.textColor,
      filled: true,
      fillColor: AppColor.whiteColor,
      hintStyle: AppTextStyle.medium15.copyWith(color: AppColor.textColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide.none
      ),

    ),
  );
}
