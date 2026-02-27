import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/domain/entities/card_entity.dart';
import 'package:task/features/home/domain/entities/product_and_service_entity.dart';
import 'package:task/features/home/presentation/widgets/home_card.dart';
import 'package:task/features/home/presentation/widgets/product_and_service_container.dart';

class HomeList extends StatelessWidget {
  final List<dynamic> data;
  final int height;

  const HomeList({super.key, required this.data, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          separatorBuilder: (_, _) => horizontalSpace(18),
          itemCount: data.length,
          itemBuilder: (context, index) {
            if (data is List<ProductAndServiceEntity>) {
              return ProductAndServiceContainer(productOrService: data[index]);
            } else if (data is List<CardEntity>) {
              return HomeCard(card: data[index]);
            }
            return null;
          },
        ),
      ),
    );
  }
}
