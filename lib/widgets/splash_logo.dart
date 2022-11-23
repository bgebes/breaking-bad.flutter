import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  final Key _testKey = const Key("splash_logo");

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo_vertical.png",
      key: _testKey,
    );
  }
}
