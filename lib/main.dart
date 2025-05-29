import 'package:flutter/material.dart';
import 'package:google_transalate/features/splash/splash_view.dart';

void main() {
  runApp(const LingoMateApp());
}

class LingoMateApp extends StatelessWidget {
  const LingoMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView());
  }
}
