import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/app_text_style.dart';
import 'package:task/features/home/domain/entities/service_entity.dart';

class ServiceCard extends StatelessWidget {
  final ServiceEntity service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color(0xFFFFF3F7),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Text(
                service.price,
                style: AppTextStyle.gradientColor13FontSize400FontWeight,
              ),
            ),
          ),
          Column(
            children: [
              Image.asset('assets/images/service.png'),
              verticalSpace(12),
              Text(
                service.title,
                style: AppTextStyle.black3Color14FontSize400FontWeight,
              ),
              verticalSpace(8),
              Text(
                service.desc,
                style: AppTextStyle.gray3Color10FontSize400FontWeight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
