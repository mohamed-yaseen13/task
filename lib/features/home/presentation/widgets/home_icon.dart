import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeIcon extends StatelessWidget {
  final String assetPath;
  final bool? noPadding;

  const HomeIcon({super.key, required this.assetPath, this.noPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.w,
      height: 56.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(noPadding == true ? 0 : 8.sp),
          child: SvgPicture.asset(assetPath),
        ),
      ),
    );
  }
}
