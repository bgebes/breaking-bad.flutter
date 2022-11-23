import 'package:breaking_bad/helpers/variable_breakpoints.dart';
import 'package:breaking_bad/widgets/character_card.dart';
import 'package:flutter/material.dart';
import 'package:breaking_bad/widgets/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  bool isLightTheme = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Logo(path: "assets/images/logo_horizontal.png"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ToolBar(),
          Text(
            'Click to Card',
            style: TextStyle(
              color: hintColor,
              fontSize: 24,
            ),
          ),
          CharacterCard(),
        ],
      ),
    );
  }
}
