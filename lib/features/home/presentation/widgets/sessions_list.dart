import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/domain/entities/session_entity.dart';
import 'package:task/features/home/presentation/widgets/sessions_card.dart';

class SessionsList extends StatelessWidget {
  const SessionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          separatorBuilder: (_, _) => horizontalSpace(18),
          itemCount: 5,
          itemBuilder: (context, index) {
            return SessionsCard(
              session: SessionEntity(
                date: '10 اكتوبر',
                desc: 'علاج تساقط الشعر جهاذ التبريد',
                name: 'الجلسه الرابعه',
                time: '2:00 PM',
              ),
              sessionColor: Color(0xFFFFF3F7),
              topIconPath: 'assets/icons/notification_icon_bold.svg',
            );
          },
        ),
      ),
    );
  }
}
