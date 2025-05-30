import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackGoogleFormPage extends StatelessWidget {
  const FeedbackGoogleFormPage({super.key});

  static const String formUrl = 'https://forms.gle/UCEzzWC9LEVhJA9QA';

  Future<void> openForm() async {
    final Uri url = Uri.parse(formUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $formUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orangeColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
        onPressed: openForm,
        child: Text(
          'Open Feedback Form',
          style: Styles.textStyle16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
