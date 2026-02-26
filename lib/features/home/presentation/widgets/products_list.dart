import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/app_constants.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/presentation/widgets/product_and_service_container.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          separatorBuilder: (_, _) => horizontalSpace(18),
          itemCount: AppConstants.products.length,
          itemBuilder: (context, index) {
            return ProductAndServiceContainer(
              productOrService: AppConstants.products[index],
            );
          },
        ),
      ),
    );
  }
}
