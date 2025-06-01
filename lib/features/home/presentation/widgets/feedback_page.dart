import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:google_transalate/features/home/presentation/widgets/feedback_googleform_page.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _controller = TextEditingController();

  Future<void> sendEmail() async {
    final String email = 'romisaafadel982@gmail.com';
    final String subject = Uri.encodeComponent('App Feedback');
    final String body = Uri.encodeComponent(_controller.text);

    final Uri emailUri = Uri.parse('mailto:$email?subject=$subject&body=$body');

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Could not open email app')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Send Feedback', style: Styles.textStyle20),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10.h,
          children: [
            SizedBox(height: 10.h),
            Image.asset('assets/images/feedback.png', height: 150, width: 150),
            SizedBox(height: 10.h),
            Text(
              'We value your feedback!',
              style: Styles.textStyle24.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),

            Text(
              'Please share your thoughts or suggestions about the app.',
              style: Styles.textStyle16.copyWith(color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            TextFormField(
              controller: _controller,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Write your feedback here...',
                hintStyle: TextStyle(color: Colors.black54),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orangeColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                onPressed: sendEmail,
                child: Text(
                  'Send',
                  style: Styles.textStyle16.copyWith(color: Colors.white),
                ),
              ),
            ),

            FeedbackGoogleFormPage(),
          ],
        ),
      ),
    );
  }
}
