import 'package:breaking_bad/helpers/variable_breakpoints.dart';
import 'package:breaking_bad/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breaking Bad Mobile App',
      theme: ThemeData(primaryColor: primaryColor),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
