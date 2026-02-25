import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/app_text_style.dart';
import 'package:task/features/home/domain/entities/session_entity.dart';
import 'package:task/features/home/presentation/widgets/home_icon.dart';

class SessionsCard extends StatelessWidget {
  final SessionEntity session;
  final Color sessionColor;

  const SessionsCard({
    super.key,
    required this.session,
    required this.sessionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 100.h,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: sessionColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: HomeIcon(
                assetPath: 'assets/icons/notification_icon_bold.svg',
                noPadding: true,
              ),
            ),
          ),
          Positioned(
            top: 12.h,
            right: 8.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  session.name,
                  style: AppTextStyle.blackColor14FontSize400FontWeight,
                ),
                verticalSpace(8),
                Text(
                  session.desc,
                  style: AppTextStyle.gray2Color12FontSize400FontWeight,
                ),
                verticalSpace(8),
                Row(
                  children: [
                    Text(
                      session.time,
                      style: AppTextStyle.blackColor11FontSize400FontWeight,
                    ),
                    horizontalSpace(8),
                    SvgPicture.asset('assets/icons/time.svg'),
                    horizontalSpace(8),
                    Text(
                      session.data,
                      style: AppTextStyle.blackColor11FontSize400FontWeight,
                      textDirection: TextDirection.rtl,
                    ),
                    horizontalSpace(8),
                    SvgPicture.asset('assets/icons/calendar.svg'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
