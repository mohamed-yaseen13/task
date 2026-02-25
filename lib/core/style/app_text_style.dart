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
}
