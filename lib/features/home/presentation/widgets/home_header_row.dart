import 'package:flutter/material.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/presentation/widgets/home_icon.dart';
import 'package:task/features/home/presentation/widgets/welcome_column.dart';

class HomeHeaderRow extends StatelessWidget {
  const HomeHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeIcon(assetPath: 'assets/icons/cart.svg'),
        horizontalSpace(8),
        HomeIcon(assetPath: 'assets/icons/notification_icon.svg'),
        Spacer(),
        WelcomeColumn(),
        horizontalSpace(8),
        HomeIcon(assetPath: 'assets/icons/qr_code.svg'),
      ],
    );
  }
}
