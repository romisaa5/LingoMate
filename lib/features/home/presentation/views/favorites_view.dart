import 'package:flutter/material.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:google_transalate/features/home/presentation/widgets/favorite_item.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                'Favorites View',
                style: Styles.textStyle20.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListView.builder(
              itemBuilder: (context, index) {
                return FavoriteItem();
              },
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
