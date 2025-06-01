import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_transalate/core/theme/app_colors.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:google_transalate/core/utils/routes/app_router.dart';
import 'package:google_transalate/features/home/presentation/views/favorites_view.dart';
import 'package:google_transalate/features/home/presentation/views/history_view.dart';
import 'package:google_transalate/features/home/presentation/views/transalte_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  final List<Widget> _views = [
    const TransalteView(),
    const HistoryView(),
    const FavoritesView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: Text(
          'LingoMate',
          style: Styles.textStyle18.copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                spacing: 10.h,
                children: [
                  Image.asset(
                    'assets/images/translate_logo.png',
                    width: 70,
                    height: 70,
                  ),
                  Text('LingoMate', style: Styles.textStyle20),
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                GoRouter.of(context).push(AppRouter.about);
              },
            ),

            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Contact Us'),
              onTap: () {
                GoRouter.of(context).push(AppRouter.contact);
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: () {
                GoRouter.of(context).push(AppRouter.feedback);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: _views[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: AppColors.secondary,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        selectedLabelStyle: const TextStyle(fontSize: 12),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.translate),
            label: 'Translate',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),

          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
