import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/app_text_style.dart';
import 'package:task/features/home/domain/entities/product_and_service_entity.dart';

class ProductAndServiceContainer extends StatelessWidget {
  final ProductAndServiceEntity productOrService;

  const ProductAndServiceContainer({super.key, required this.productOrService});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: productOrService.color,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          productOrService.color == Color(0xFFF7FAFF)
              ? BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                )
              : BoxShadow(),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  productOrService.imagePath,
                  width: 200.w,
                  height: 150.h,
                  fit: BoxFit.fill,
                ),
                verticalSpace(12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productOrService.title,
                        style: AppTextStyle.black3Color14FontSize400FontWeight,
                      ),
                      verticalSpace(8),
                      Text(
                        productOrService.desc,
                        style: AppTextStyle.gray3Color10FontSize400FontWeight,
                      ),
                      verticalSpace(12),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 80.w,
              height: 20.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.r),
                  bottomLeft: Radius.circular(12.r),
                ),
              ),
              child: Center(
                child: Text(
                  productOrService.price,
                  style: AppTextStyle.gradientColor13FontSize400FontWeight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
