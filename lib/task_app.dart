import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/routing/app_router.dart';
import 'package:task/core/routing/app_routes.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(backgroundColor: Colors.white),
            fontFamily: 'DINNextLTW23',
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homeScreen,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}
