import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_transalate/features/home/presentation/widgets/result_container.dart';
import 'package:google_transalate/features/home/presentation/widgets/select_langauge.dart';
import 'package:google_transalate/features/home/presentation/widgets/transalte_container.dart';

class TransalteView extends StatelessWidget {
  const TransalteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15.h,
            children: [
              SelectLangauge(),
              TransalteContainer(),
              ResultContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
