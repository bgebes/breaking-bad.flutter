import 'package:flutter/material.dart';
import 'dart:async';

/*
* It provides to route another page after given delay.
*
* @param context(required)    The context of current page
* @param nextPage(required)   Page that will route
* @param delay(default: 2)    Routing duration
*  
* @return void
*/
void navigateAfterDelay({
  required BuildContext context,
  required Widget nextPage,
  int delay = 2,
}) {
  /* 
    Animation started after duration that 1 second to 
    not catch errors while initializing state.
  */
  Timer(const Duration(seconds: 1), () {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => nextPage,
        transitionDuration: Duration(seconds: delay),
        transitionsBuilder: (_, animation, __, widget) =>
            FadeTransition(opacity: animation, child: widget),
      ),
    );
  });
}
