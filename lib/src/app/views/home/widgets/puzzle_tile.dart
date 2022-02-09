import 'package:flutter/material.dart';
import 'package:flutter_puzzle_hack/src/models/models.dart';

class PuzzleTile extends StatelessWidget {
  const PuzzleTile({
    Key? key,
    this.tile,
  }) : super(key: key);

  final TileModel? tile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Center(
        child: Text(tile!.tileNumber.toString()),
      ),
    );
  }
}
