import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle blackColor16FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle grayColor12FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Color(0xFF777474),
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle whiteColor20FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle whiteColor10FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Colors.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle gradientColor10FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    foreground: Paint()
      ..shader = LinearGradient(
        colors: [Color(0xFF81017F), Color(0xFFA83F98), Color(0xFFF5B7CA)],
      ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle blackColor14FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle gray2Color12FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Color(0xFF676262),
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle blackColor11FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Colors.black,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black2Color17FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Color(0xFF0F0F0F),
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle gradientColor13FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    foreground: Paint()
      ..shader = LinearGradient(
        colors: [Color(0xFF81017F), Color(0xFFA83F98), Color(0xFFF5B7CA)],
      ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black3Color14FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Color(0xFF3C3939),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle gray3Color10FontSize400FontWeight = TextStyle(
    fontFamily: 'DINNextLTW23',
    color: Color(0xFF7A7E80),
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
}
