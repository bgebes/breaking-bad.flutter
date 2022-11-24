import 'package:breaking_bad/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({super.key, required this.toggleThemeState});

  final void Function() toggleThemeState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 0, left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ExitButton(),
          ToggleTheme(toggleThemeState: toggleThemeState),
        ],
      ),
    );
  }
}
