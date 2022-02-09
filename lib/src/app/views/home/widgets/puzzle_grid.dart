import 'package:flutter/material.dart';
import 'package:flutter_puzzle_hack/src/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets.dart';

class PuzzleGrid extends HookConsumerWidget {
  const PuzzleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final _p = ref.watch(puzzleListProvider);
    return SizedBox(
      height: h * 50,
      width: w * 10,
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 4,
        children: _p.value!.map((e) => PuzzleTile(tile: e)).toList(),
      ),
    );
  }
}
