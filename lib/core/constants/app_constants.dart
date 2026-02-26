import 'package:flutter/material.dart';
import 'package:task/features/home/domain/entities/card_entity.dart';
import 'package:task/features/home/domain/entities/product_and_service_entity.dart';

class AppConstants {
  static List<CardEntity> sessions = [
    CardEntity(
      date: '10 اكتوبر',
      desc: 'علاج تساقط الشعر بجهاز التبريد',
      name: 'الجلسة الرابعة',
      time: '2:00 PM',
      color: Color(0xFFFFF3F7),
      topIconPath: 'assets/icons/notification_icon_bold.svg',
    ),
    CardEntity(
      date: '15 اكتوبر',
      desc: 'علاج تساقط الشعر بجهاز التبريد',
      name: 'الجلسة الرابعة',
      time: '2:00 PM',
      color: Colors.white,
      topIconPath: 'assets/icons/notification_icon_bold.svg',
    ),
    CardEntity(
      date: '10 اكتوبر',
      desc: 'علاج تساقط الشعر بجهاز التبريد',
      name: 'الجلسة الرابعة',
      time: '2:00 PM',
      color: Color(0xFFFFF3F7),
      topIconPath: 'assets/icons/notification_icon_bold.svg',
    ),
    CardEntity(
      date: '15 اكتوبر',
      desc: 'علاج تساقط الشعر بجهاز التبريد',
      name: 'الجلسة الرابعة',
      time: '2:00 PM',
      color: Colors.white,
      topIconPath: 'assets/icons/notification_icon_bold.svg',
    ),
  ];

  static List<CardEntity> reminders = [
    CardEntity(
      date: 'اليوم',
      desc: 'باستخدام شنبو هيفين فالي',
      name: 'لا تنس غسول الشعر',
      time: '',
      repeatingTime: '-3 مرات',
      color: Color(0xFFd7f0d1),
      topIconPath: 'assets/icons/hair_icon.svg',
    ),
    CardEntity(
      date: 'اليوم',
      desc: 'أضف الكريم علي الوجه لمدة ساعة',
      name: 'استخدام كريم uivi',
      time: '2:00 PM',
      color: Colors.white,
      topIconPath: 'assets/icons/hair_icon.svg',
    ),
    CardEntity(
      date: 'اليوم',
      desc: 'باستخدام شنبو هيفين فالي',
      name: 'لا تنس غسول الشعر',
      time: '',
      repeatingTime: '-3 مرات',
      color: Color(0xFFd7f0d1),
      topIconPath: 'assets/icons/hair_icon.svg',
    ),
    CardEntity(
      date: 'اليوم',
      desc: 'أضف الكريم علي الوجه لمدة ساعة',
      name: 'استخدام كريم uivi',
      time: '2:00 PM',
      color: Colors.white,
      topIconPath: 'assets/icons/hair_icon.svg',
    ),
  ];

  static List<ProductAndServiceEntity> services = [
    ProductAndServiceEntity(
      desc: 'شاشه بحجم 15 انش',
      price: '1000 ج',
      title: 'ماك بوك برو 2020',
      imagePath: 'assets/images/service0.png',
      color: Color(0xFFFFF3F7),
    ),
    ProductAndServiceEntity(
      desc: 'علاج التساقط والهيشان بطريقة طبية',
      price: '1000 ج',
      title: 'علاج الشعر بجهاز asr',
      imagePath: 'assets/images/service1.png',
      color: Color(0xFFFFF3F7),
    ),
    ProductAndServiceEntity(
      desc: 'فرد الشعر الجذاب الجديد',
      price: '1000 ج',
      title: 'فرد الشعر بتقنيه نانو',
      imagePath: 'assets/images/service2.png',
      color: Color(0xFFFFF3F7),
    ),
  ];

  static List<ProductAndServiceEntity> products = [
    ProductAndServiceEntity(
      desc: 'علاج التساقط والهيشان بطريقة طبية',
      price: '1000 ج',
      title: 'علاج الشعر بجهاز asr',
      imagePath: 'assets/images/product0.png',
    ),
    ProductAndServiceEntity(
      desc: 'علاج التساقط والهيشان بطريقة طبية',
      price: '1000 ج',
      title: 'علاج الشعر بجهاز asr',
      imagePath: 'assets/images/product1.png',
    ),
    ProductAndServiceEntity(
      desc: 'علاج التساقط والهيشان بطريقة طبية',
      price: '1000 ج',
      title: 'علاج الشعر بجهاز asr',
      imagePath: 'assets/images/product2.png',
    ),
  ];
}
