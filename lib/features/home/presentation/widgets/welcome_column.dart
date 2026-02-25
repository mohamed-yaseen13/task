import 'package:flutter/material.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/app_text_style.dart';

class WelcomeColumn extends StatelessWidget {
  const WelcomeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'مرحبا بك مريم احمد',
          style: AppTextStyle.blackColor16FontSize400FontWeight,
        ),
        verticalSpace(8),
        Text(
          'كيف حالك اليوم',
          style: AppTextStyle.grayColor12FontSize400FontWeight,
        ),
      ],
    );
  }
}
