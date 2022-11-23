import 'package:breaking_bad/helpers/variable_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class ExitButton extends StatelessWidget {
  const ExitButton({super.key});

  void exitFromApp() {
    final String platform = Platform.isAndroid ? 'Android' : 'Anyelse';

    if (platform == 'Android') {
      SystemNavigator.pop();
    } else {
      exit(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: exitFromApp,
      icon: Icon(
        Icons.close,
        color: hintColor,
        size: 32,
      ),
    );
  }
}
