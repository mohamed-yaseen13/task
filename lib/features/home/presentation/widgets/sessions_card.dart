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
  final String topIconPath;

  const SessionsCard({
    super.key,
    required this.session,
    required this.sessionColor,
    required this.topIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Stack(
        children: [
          Positioned(
            top: 8.h,
            left: 8.w,
            right: 0.w,
            child: Container(
              height: 100.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: sessionColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(8),
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
                      SvgPicture.asset('assets/icons/time.svg'), // var
                      horizontalSpace(8),
                      Text(
                        session.date,
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
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: HomeIcon(assetPath: topIconPath, noPadding: true),
            ),
          ),
        ],
      ),
    );
  }
}
