import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/helpers/extensions.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/app_text_style.dart';
import 'package:task/features/home/domain/entities/card_entity.dart';
import 'package:task/features/home/presentation/widgets/home_icon.dart';

class HomeCard extends StatelessWidget {
  final CardEntity card;

  const HomeCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: SizedBox(
        width: 200.w,
        child: Stack(
          children: [
            Positioned(
              top: 8.h,
              left: 8.w,
              right: 0.w,
              bottom: 0.h,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: card.color,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    card.color == Colors.white
                        ? BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          )
                        : BoxShadow(),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        card.name,
                        style: AppTextStyle.blackColor14FontSize400FontWeight,
                      ),
                      verticalSpace(8),
                      Text(
                        card.desc,
                        style: AppTextStyle.gray2Color12FontSize400FontWeight,
                      ),
                      verticalSpace(8),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/calendar.svg'),
                          horizontalSpace(8),
                          Text(
                            card.date,
                            style:
                                AppTextStyle.blackColor11FontSize400FontWeight,
                            textDirection: TextDirection.rtl,
                          ),
                          horizontalSpace(8),
                          if (!card.repeatingTime.isNullOrEmpty())
                            Text(
                              card.repeatingTime!,
                              style: AppTextStyle
                                  .gradientColor10FontSize400FontWeight,
                            ),
                          if (!card.time.isNullOrEmpty())
                            SvgPicture.asset('assets/icons/time.svg'),
                          horizontalSpace(8),
                          Text(
                            card.time,
                            style:
                                AppTextStyle.blackColor11FontSize400FontWeight,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: 42.w,
                height: 42.h,
                child: HomeIcon(assetPath: card.topIconPath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
