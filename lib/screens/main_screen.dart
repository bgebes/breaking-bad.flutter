import 'package:flutter/material.dart';
import 'package:breaking_bad/actions/actions.dart';
import 'package:breaking_bad/widgets/widgets.dart';
import 'package:breaking_bad/models/character.dart';
import 'package:breaking_bad/widgets/character_card.dart';
import 'package:breaking_bad/helpers/variable_breakpoints.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  late Future<Character> fCharacter;
  bool isLightTheme = true;

  @override
  void initState() {
    super.initState();
    fCharacter = fetchCharacter();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
          const ToolBar(),
          Text(
            'Click to Card',
            style: TextStyle(
              color: hintColor,
              fontSize: 24,
            ),
          ),
          CharacterCard(fCharacter: fCharacter)
        ],
      ),
    );
  }
}
