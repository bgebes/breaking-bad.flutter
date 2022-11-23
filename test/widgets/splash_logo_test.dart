import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:breaking_bad/widgets/splash_logo.dart';

void main() {
  testWidgets('SplashLogo has an image from assets', (tester) async {
    await tester.pumpWidget(const SplashLogo());

    Key testKey = const Key("splash_logo");

    final imageFinder = find.byKey(testKey);

    expect(imageFinder, findsOneWidget);
  });
}
