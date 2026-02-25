import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/style/app_text_style.dart';

class NewSectionRow extends StatelessWidget {
  final String sectionText;

  const NewSectionRow({super.key, required this.sectionText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 67.w,
            height: 24.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'عرض الكل',
                style: AppTextStyle.gradientColor10FontSize400FontWeight,
              ),
            ),
          ),
        ),
        Spacer(),
        Text(
          sectionText,
          style: AppTextStyle.blackColor14FontSize400FontWeight,
        ),
      ],
    );
  }
}
