import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:breaking_bad/widgets/logo.dart';

void main() {
  testWidgets('Logo has an image from assets', (tester) async {
    await tester.pumpWidget(Logo());

    Key testKey = const Key("logo");

    final imageFinder = find.byKey(testKey);

    expect(imageFinder, findsOneWidget);
  });
}
