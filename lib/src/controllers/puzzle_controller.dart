import 'package:flutter/foundation.dart';
import 'package:flutter_puzzle_hack/src/models/models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class Puzzle {
  shufflePuzzle();
  resetPuzzle();
  Future<List<TileModel>> getPuzzle();
  getHint();
  getSolution();
}

class PuzzleController extends ChangeNotifier implements Puzzle {
  //ref pass to provider
  final Ref? ref;
  PuzzleController({this.ref});
  List<TileModel> _puzzle = [];
  final List<TileModel> _solution = [];
  final List<TileModel> _hint = [];

  //getters
  List<TileModel> get puzzle => _puzzle;
  //generate  puzzle
  @override
  Future<List<TileModel>> getPuzzle() {
    _puzzle = List.generate(15, (index) => TileModel(tileNumber: index));
    // notifyListeners();
    return _puzzle as Future<List<TileModel>>;
  }

  @override
  TileModel getHint() {
    return TileModel(tileNumber: 15);
  }

  @override
  TileModel getSolution() {
    return TileModel(tileNumber: 15);
  }

  @override
  TileModel shufflePuzzle() {
    return TileModel(tileNumber: 15);
  }

  @override
  TileModel resetPuzzle() {
    return TileModel(tileNumber: 15);
  }
}
