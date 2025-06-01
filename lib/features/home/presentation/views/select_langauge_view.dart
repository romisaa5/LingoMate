import 'package:flutter/material.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';

class SelectLangaugeView extends StatelessWidget {
  const SelectLangaugeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
        ),
        title: Text('Select Language', style: Styles.textStyle20,),
      ),
    );
  }
}
