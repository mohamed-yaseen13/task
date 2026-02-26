import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/app_constants.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/presentation/widgets/home_card.dart';

class SessionsList extends StatelessWidget {
  const SessionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          separatorBuilder: (_, _) => horizontalSpace(8),
          itemCount: AppConstants.sessions.length,
          itemBuilder: (context, index) {
            return HomeCard(card: AppConstants.sessions[index]);
          },
        ),
      ),
    );
  }
}
