import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:google_transalate/core/utils/routes/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      GoRouter.of(context).pushReplacement(home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset('assets/images/Ellipse 1.png'),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset('assets/images/Ellipse 2.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          Center(
            child: Image.asset(
              'assets/images/translate_logo.png',
              width: 115,
              height: 115,
            ),
          ),
          const SizedBox(height: 16),
          Center(child: Text('Translate on the Go', style: Styles.textStyle18)),
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/images/loading.png',
              width: 115,
              height: 115,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
