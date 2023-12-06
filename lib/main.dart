import 'package:blog_app/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'login_reg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme:  ThemeData(
        fontFamily: "Urbanist",
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const LoginRegisterPage(),
    );
  }
}
