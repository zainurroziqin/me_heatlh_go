import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/pages/detailKuisioner.dart';
import 'package:me_heatlh_go/pages/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      builder: (_, child) {
        return GetMaterialApp(
          title: 'MeHealth Go',
          debugShowCheckedModeBanner: false,
          home: child,
          theme: ThemeData.light(),
        );
      },
      child: const SplashScreen(),
    );
  }
}
