import 'package:flutter_puzzle_hack/src/models/tile_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/controllers.dart';

//puzzle controller provider
final puzzleControllerProvider = ChangeNotifierProvider((ref) {
  return PuzzleController(ref: ref);
});

//get puzzle list provider
final puzzleListProvider = FutureProvider<List<TileModel>>((ref) async {
  final p = ref.watch(puzzleControllerProvider);
  PuzzleController pu = PuzzleController();

  final _pList = p.getPuzzle();
  return _pList;
});
