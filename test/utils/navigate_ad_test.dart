import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:breaking_bad/utils/utils.dart';

void main() {
  testWidgets('Current page has been navigation to next page', (tester) async {
    await tester.pumpWidget(const FakeApp());

    await tester.pumpAndSettle(const Duration(seconds: 3));

    final npScreenFinder = find.byKey(const Key('np'));

    expect(npScreenFinder, findsOneWidget);
  });
}

class FakeApp extends StatelessWidget {
  const FakeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrentPage(),
    );
  }
}

class CurrentPage extends StatefulWidget {
  const CurrentPage({super.key});

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  @override
  void initState() {
    super.initState();
    navigateAfterDelay(context: context, nextPage: const NextPage());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          key: const Key('cp'),
          width: 50,
          height: 50,
          child: Container(
            color: Colors.red,
            child: const Text("Current Page"),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          key: const Key('np'),
          width: 50,
          height: 50,
          child: Container(
            color: Colors.lime,
            child: const Text("Next Page"),
          ),
        ),
      ),
    );
  }
}
