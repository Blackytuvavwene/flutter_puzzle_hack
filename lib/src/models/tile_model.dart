import 'models.dart';

class TileModel {
  final int? tileNumber;
  final PositionModel? position;

  TileModel({
    this.tileNumber,
    this.position,
  });

  TileModel copyWith({
    int? tileNumber,
    PositionModel? position,
  }) {
    return TileModel(
      tileNumber: tileNumber ?? this.tileNumber,
      position: position ?? this.position,
    );
  }
}
