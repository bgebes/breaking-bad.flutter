import 'package:flutter/material.dart';
import 'package:breaking_bad/helpers/variable_breakpoints.dart';

class ToggleTheme extends StatelessWidget {
  const ToggleTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.sunny,
        color: hintColor,
        size: 32,
      ),
    );
  }
}
