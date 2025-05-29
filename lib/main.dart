import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/features/home/presentation/home_view.dart';
import 'package:google_transalate/features/splash/splash_view.dart';

void main() {
  runApp(const LingoMateApp());
}

class LingoMateApp extends StatelessWidget {
  const LingoMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        );
      },
    );
  }
}
