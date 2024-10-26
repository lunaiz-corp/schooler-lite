import 'package:go_router/go_router.dart';
import 'package:schooler_lite/pages/home_page.dart';
import 'package:schooler_lite/pages/splash_screen.dart';

final GoRouter router = GoRouter(initialLocation: '/splash_screen', routes: [
  GoRoute(
    path: '/splash_screen',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
  ),
]);
