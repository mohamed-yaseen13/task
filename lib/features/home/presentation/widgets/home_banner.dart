import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/app_text_style.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.h,
      height: 122.w,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16.r),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF81017F), Color(0xFFA83F98), Color(0xFFF5B7CA)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/beauty.png',
              height: 121.h,
              width: 208.w,
            ),
          ),
          Positioned(
            right: 16.w,
            top: 21.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'استثمر في جمالك معانا',
                  style: AppTextStyle.whiteColor20FontSize400FontWeight,
                ),
                verticalSpace(8),
                Text(
                  "احصل علي نقاط عند شراء المنتجات او استخدام\n الخدمات",
                  style: AppTextStyle.whiteColor10FontSize400FontWeight,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
