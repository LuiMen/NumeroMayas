import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'estadoplayroom.freezed.dart';
part 'estadoplayroom.g.dart';

@freezed
abstract class EstadoPlayRoom with _$EstadoPlayRoom {
  factory EstadoPlayRoom({
    @required int generatedNumber,
    int numberType,
    bool isCorrect,
    bool isAnswered,
    bool notifier,
  }) = _EstadoPlayRoom;

  factory EstadoPlayRoom.inicial() => _EstadoPlayRoom(
        generatedNumber: Random().nextInt(400 + 1),
        numberType: Random().nextInt(2),
        isCorrect: false,
        isAnswered: false,
        notifier: false,
      );

  factory EstadoPlayRoom.fromJson(Map<String, dynamic> json) =>
      _$EstadoPlayRoomFromJson(json);
}
