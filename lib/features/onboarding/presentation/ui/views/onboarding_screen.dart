import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:google_transalate/core/utils/routes/app_router.dart';
import 'package:google_transalate/features/onboarding/models/onboarding_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<OnboardingContent> _content = [
    OnboardingContent(
      image: 'assets/images/img1.jpg',
      title: 'Welcome to LingoMate',
      subtitle: 'Your smart language translation companion',
    ),
    OnboardingContent(
      image: 'assets/images/img2.jpg',
      title: 'Fast & Accurate Translation',
      subtitle: 'Instantly translate over 100+ languages',
    ),
    OnboardingContent(
      image: 'assets/images/img3.jpg',
      title: 'Start Exploring',
      subtitle: 'Let’s begin your journey with LingoMate!',
    ),
  ];

  void _nextPage() async {
    if (_currentIndex < _content.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('onboarding_completed', true);
      GoRouter.of(context).go(AppRouter.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _controller,
        itemCount: _content.length,
        onPageChanged: (index) => setState(() => _currentIndex = index),
        itemBuilder: (context, index) {
          final item = _content[index];
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              spacing: 15.h,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('onboarding_completed', true);
                      GoRouter.of(context).go(AppRouter.home);
                    },

                    child: Text(
                      _currentIndex == _content.length - 1 ? 'Done' : 'Skip',
                      style: Styles.textStyle18.copyWith(color: Colors.black),
                    ),
                  ),
                ),
                Spacer(),
                Image.asset(item.image, height: 300),
                Text(
                  item.title,
                  style: Styles.textStyle24.copyWith(color: Colors.black),
                ),
                Text(
                  item.subtitle,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle16.copyWith(color: Colors.black54),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _content.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: _currentIndex == index ? 30 : 10,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                            _currentIndex == index
                                ? AppColors.primary
                                : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: _nextPage,
            child: Text(
              _currentIndex == _content.length - 1 ? 'Get Started' : 'Next',
              style: Styles.textStyle16,
            ),
          ),
        ),
      ),
    );
  }
}
