import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20.h,
        children: [
          Text(
            'Arabic',
            style: Styles.textStyle16.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Translated text will appear here',
            style: Styles.textStyle14.copyWith(
              color: Colors.black54,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 5.w,
            children: [
              IconButton(
                icon: const Icon(Icons.copy, color: Colors.black),
                onPressed: () {
                  // Implement copy functionality
                },
              ),
              IconButton(
                icon: const Icon(Icons.share, color: Colors.black),
                onPressed: () {
                  // Implement share functionality
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.black),
                onPressed: () {
                  // Implement favorite functionality
                },
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
