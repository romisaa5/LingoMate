import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About', style: Styles.textStyle20),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Center(
              child: Text(
                'LingoMate',
                style: Styles.textStyle24.copyWith(color: Colors.black),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/about.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'LingoMate is a language translation app that helps you easily translate between multiple languages. Designed with simplicity and clarity in mind.',
              style: Styles.textStyle16.copyWith(color: Colors.black54),
            ),
            Text(
              'Version: 1.0.0',
              style: Styles.textStyle16.copyWith(color: Colors.black54),
            ),

            Text(
              'Developed by : Romisaa Mohamed Fadel',
              style: Styles.textStyle16.copyWith(color: Colors.black54),
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
