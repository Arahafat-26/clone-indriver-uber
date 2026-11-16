import 'package:flutter/material.dart';
import 'package:flutter_app_uber/src/config/router/AppRouter.dart';
//import 'package:flutter_app_uber/src/views/pages/auth/home/HomePage.dart';
//import 'package:flutter_app_uber/src/views/pages/auth/login/LoginPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        useMaterial3: true
      ) ,
      routerConfig: appRouter,
    );
  }
}
