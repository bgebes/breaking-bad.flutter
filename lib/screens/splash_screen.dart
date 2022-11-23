import 'package:flutter/material.dart';
import 'package:breaking_bad/utils/utils.dart';
import 'package:breaking_bad/widgets/widgets.dart';
import 'package:breaking_bad/screens/screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateAfterDelay(context: context, nextPage: const MainScreen());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Logo(),
      ),
    );
  }
}
