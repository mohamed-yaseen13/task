import 'package:flutter/material.dart';
import 'package:task/core/routing/app_routes.dart';
import 'package:task/features/home/presentation/screens/home_screen.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      default:
        return null;
    }
  }
}
