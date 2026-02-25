import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/domain/entities/service_entity.dart';
import 'package:task/features/home/presentation/widgets/service_card.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          separatorBuilder: (_, _) => horizontalSpace(18),
          itemCount: 5,
          itemBuilder: (context, index) {
            return ServiceCard(
              service: ServiceEntity(
                title: 'علاج الشعر بجهاز asr',
                price: '1000 ج',
                desc: 'علاج التساقط والهيشان بطريقة طبية',
              ),
            );
          },
        ),
      ),
    );
  }
}
