import 'package:flutter/material.dart';

class CardEntity {
  final String name;
  final String desc;
  final String date;
  final String time;
  final Color? color;
  final String topIconPath;

  CardEntity({
    required this.date,
    required this.desc,
    required this.name,
    required this.time,
    this.color = Colors.white,
    required this.topIconPath,
  });
}
