import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text('Contact Us', style: Styles.textStyle20),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20.h,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 20.h),
            Text(
              'Get in Touch',
              style: Styles.textStyle24.copyWith(color: Colors.black),
            ),

            Image.asset(
              'assets/images/communicate.png',
              height: 150,
              width: 150,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                const Icon(Icons.email, color: AppColors.primary),
                const SizedBox(width: 10),
                Text(
                  'romisaafadel982@gmail.com',
                  style: Styles.textStyle16.copyWith(color: Colors.black54),
                ),
              ],
            ),

            Row(
              children: [
                const Icon(Icons.phone, color: AppColors.primary),
                const SizedBox(width: 10),
                Text(
                  '+20 1015917674',
                  style: Styles.textStyle16.copyWith(color: Colors.black54),
                ),
              ],
            ),

            Row(
              children: [
                const Icon(Icons.location_on, color: AppColors.primary),
                const SizedBox(width: 10),
                Text(
                  'Mansoura , Egypt',
                  style: Styles.textStyle16.copyWith(color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
