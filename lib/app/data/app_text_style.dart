
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {

  static TextStyle get regular10 => style(10, FontWeight.w400);
  static TextStyle get medium10 => style(10, FontWeight.w500);
  static TextStyle get bold10   => style(10, FontWeight.w600);
  static TextStyle get light10  => style(10, FontWeight.w300);

  static TextStyle get regular12 => style(12, FontWeight.w400);
  static TextStyle get medium12 => style(12, FontWeight.w500);
  static TextStyle get bold12   => style(12, FontWeight.w600);
  static TextStyle get light12  => style(12, FontWeight.w300);

  static TextStyle get regular14 => style(14, FontWeight.w400);
  static TextStyle get medium14 => style(14, FontWeight.w500);
  static TextStyle get bold14   => style(14, FontWeight.w600);
  static TextStyle get light14  => style(14, FontWeight.w300);

  static TextStyle get regular15 => style(15, FontWeight.w400);
  static TextStyle get medium15 => style(15, FontWeight.w500);
  static TextStyle get bold15   => style(15, FontWeight.w600);
  static TextStyle get light15  => style(15, FontWeight.w300);

  static TextStyle get regular18 => style(18, FontWeight.w400);
  static TextStyle get medium18 => style(18, FontWeight.w500);
  static TextStyle get bold18   => style(18, FontWeight.w600);
  static TextStyle get light18  => style(18, FontWeight.w300);

  static TextStyle get regular20 => style(20, FontWeight.w400);
  static TextStyle get medium20 => style(20, FontWeight.w500);
  static TextStyle get bold20   => style(20, FontWeight.w600);
  static TextStyle get light20  => style(20, FontWeight.w300);

  static TextStyle get regular22 => style(22, FontWeight.w400);
  static TextStyle get medium22 => style(22, FontWeight.w500);
  static TextStyle get bold22   => style(22, FontWeight.w600);
  static TextStyle get light22  => style(22, FontWeight.w300);

  static TextStyle get regular25 => style(25, FontWeight.w400);
  static TextStyle get medium25 => style(25, FontWeight.w500);
  static TextStyle get bold25   => style(25, FontWeight.w600);
  static TextStyle get light25  => style(25, FontWeight.w300);

  static TextStyle get regular28 => style(28, FontWeight.w400);
  static TextStyle get medium28 => style(28, FontWeight.w500);
  static TextStyle get bold28   => style(28, FontWeight.w600);
  static TextStyle get light28  => style(28, FontWeight.w300);

  static TextStyle get regular30 => style(30, FontWeight.w400);
  static TextStyle get medium30 => style(30, FontWeight.w500);
  static TextStyle get bold30   => style(30, FontWeight.w600);
  static TextStyle get light30  => style(30, FontWeight.w300);

  static TextStyle get regular35 => style(35, FontWeight.w400);
  static TextStyle get medium35 => style(35, FontWeight.w500);
  static TextStyle get bold35   => style(35, FontWeight.w600);
  static TextStyle get light35  => style(35, FontWeight.w300);

  static TextStyle get regular40 => style(40, FontWeight.w400);
  static TextStyle get medium40 => style(40, FontWeight.w500);
  static TextStyle get bold40   => style(40, FontWeight.w600);
  static TextStyle get light40  => style(40, FontWeight.w300);

  static TextStyle style(double size, FontWeight weight) {
    return TextStyle(
      fontFamily: 'poppins',
      fontSize: size.sp,
      fontWeight: weight,
    );
  }
}
