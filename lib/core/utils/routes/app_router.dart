import 'package:go_router/go_router.dart';
import 'package:google_transalate/features/home/presentation/home_view.dart';
import 'package:google_transalate/features/home/presentation/views/select_langauge_view.dart';
import 'package:google_transalate/features/home/presentation/widgets/about_page.dart';
import 'package:google_transalate/features/home/presentation/widgets/contact_page.dart';
import 'package:google_transalate/features/home/presentation/widgets/feedback_page.dart';
import 'package:google_transalate/features/splash/splash_view.dart';

class AppRouter {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String feedback = '/feedback';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String selectlanguage = '/selectlanguage';

  static final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(path: splash, builder: (context, state) => SplashView()),
      GoRoute(path: home, builder: (context, state) => HomeView()),
      GoRoute(path: about, builder: (context, state) => AboutPage()),
      GoRoute(path: contact, builder: (context, state) => ContactPage()),
      GoRoute(path: feedback, builder: (context, state) => FeedbackPage()),
      GoRoute(
        path: selectlanguage,
        builder: (context, state) => SelectLangaugeView(),
      ),
    ],
  );
}

// Add more routes as needed
