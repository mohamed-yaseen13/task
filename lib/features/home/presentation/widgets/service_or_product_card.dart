import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/app_text_style.dart';

class ServiceOrProductCard extends StatelessWidget {
  final Color color;
  final String imagePath;
  final String name;

  const ServiceOrProductCard({
    super.key,
    required this.color,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: color,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Image.asset(imagePath),
          horizontalSpace(12),
          Column(
            children: [
              verticalSpace(12),
              Text(
                name,
                style: AppTextStyle.black2Color17FontSize400FontWeight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
