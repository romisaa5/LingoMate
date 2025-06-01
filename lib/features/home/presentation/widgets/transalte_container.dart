import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';

class TransalteContainer extends StatefulWidget {
  const TransalteContainer({super.key});

  @override
  State<TransalteContainer> createState() => _TransalteContainerState();
}

class _TransalteContainerState extends State<TransalteContainer> {
  TextEditingController transalatorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260.h,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(15),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Styles.textStyle16.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
              ],
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: transalatorController,
              maxLines: 4,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Enter text to translate',
                hintStyle: Styles.textStyle14.copyWith(color: Colors.black54),
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppColors.primary,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic, color: Colors.white, size: 24.sp),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Translate',
                    style: Styles.textStyle16.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
