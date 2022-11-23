import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo({super.key, this.path = "assets/images/logo_vertical.png"});

  String path;

  final Key _testKey = const Key("logo");

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, key: _testKey);
  }
}
