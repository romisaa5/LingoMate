import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:google_transalate/core/utils/routes/app_router.dart';

class SelectLangauge extends StatelessWidget {
  const SelectLangauge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(25.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(right: 20.0.w, left: 20.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Styles.textStyle16.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.swap_horiz, color: Colors.black),
                ),
                Text(
                  'Arabic',
                  style: Styles.textStyle16.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.selectlanguage);
            },
            child: Text(
              'Select Language',
              style: Styles.textStyle12.copyWith(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
