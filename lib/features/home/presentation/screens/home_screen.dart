import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/presentation/widgets/home_banner.dart';
import 'package:task/features/home/presentation/widgets/home_header_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 56.h),
          child: Column(
            children: [
              verticalSpace(8),
              HomeHeaderRow(),
              verticalSpace(18),
              HomeBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
