import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      GoRouter.of(context).go(home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/translate_logo.png',
              width: 115,
              height: 115,
            ),
          ),
          Text('')
        ],
      ),
    );
  }
}
