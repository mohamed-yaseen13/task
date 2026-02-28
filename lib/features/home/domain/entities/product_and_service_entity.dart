import 'package:flutter/material.dart';

class ProductAndServiceEntity {
  final String price;
  final String title;
  final String desc;
  final String imagePath;
  final Color? color;

  ProductAndServiceEntity({
    required this.desc,
    required this.price,
    required this.title,
    required this.imagePath,
    this.color = const Color(0xFFF7FAFF),
  });
}
