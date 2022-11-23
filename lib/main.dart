import 'package:flutter/material.dart';
import 'package:breaking_bad/screens/screens.dart';
import 'package:breaking_bad/helpers/variable_breakpoints.dart';

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
