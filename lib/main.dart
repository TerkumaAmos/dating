import 'package:dating_app/login_screen.dart';
import 'package:dating_app/onboard_Screen3.dart';
import 'package:dating_app/onboard_screen1.dart';
import 'package:dating_app/onboard_screen2.dart';
import 'package:dating_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
