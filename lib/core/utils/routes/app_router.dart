import 'package:go_router/go_router.dart';
import 'package:google_transalate/core/utils/routes/routes.dart';
import 'package:google_transalate/features/home/presentation/home_view.dart';
import 'package:google_transalate/features/splash/splash_view.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(path: splash, builder: (context, state) => SplashView()),
      GoRoute(path: home, builder: (context, state) => HomeView()),
    ],
  );
}

// Add more routes as needed
