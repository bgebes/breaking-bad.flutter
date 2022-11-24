import 'package:flutter/material.dart';
import 'package:breaking_bad/helpers/variable_breakpoints.dart';

class ToggleTheme extends StatelessWidget {
  const ToggleTheme({super.key, required this.toggleThemeState});

  final void Function() toggleThemeState;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: toggleThemeState,
      icon: Icon(
        Icons.sunny,
        color: hintColor,
        size: 32,
      ),
    );
  }
}
