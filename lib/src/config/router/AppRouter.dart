import 'package:flutter_app_uber/src/views/pages/auth/home/HomePage.dart';
import 'package:flutter_app_uber/src/views/pages/auth/login/LoginPage.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage()
      ),
      GoRoute(
      path: '/login',
      builder: (context, state) => const Loginpage()
      )
  ]
);