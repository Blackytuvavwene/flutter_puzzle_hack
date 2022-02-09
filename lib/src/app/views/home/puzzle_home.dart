import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class PuzzleHome extends StatelessWidget {
  const PuzzleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puzzle'),
      ),
      body: const SafeArea(
        child: Center(child: PuzzleGrid()),
      ),
    );
  }
}
