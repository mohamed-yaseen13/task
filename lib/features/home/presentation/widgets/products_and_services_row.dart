import 'package:flutter/material.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/home/presentation/widgets/service_or_product_card.dart';

class ProductsAndServicesRow extends StatelessWidget {
  const ProductsAndServicesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ServiceOrProductCard(
            color: Color(0xFFE2EBFE),
            imagePath: 'assets/images/blue_skincare_bundle.png',
            name: 'المنتجات',
          ),
        ),
        horizontalSpace(24),
        Expanded(
          child: ServiceOrProductCard(
            color: Color(0xFFFDF1D6),
            imagePath: 'assets/images/Fan_hairbrush_and_scissors.png',
            name: 'الخدمات',
          ),
        ),
      ],
    );
  }
}
