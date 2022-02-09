import 'package:flutter/material.dart';
import 'package:flutter_puzzle_hack/src/app/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFFea9a62),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const PuzzleHome(),
    );
  }
}
