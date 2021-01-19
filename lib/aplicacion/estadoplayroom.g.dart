// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estadoplayroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstadoPlayRoom _$_$_EstadoPlayRoomFromJson(Map<String, dynamic> json) {
  return _$_EstadoPlayRoom(
    generatedNumber: json['generatedNumber'] as int,
    numberType: json['numberType'] as int,
    isCorrect: json['isCorrect'] as bool,
    isAnswered: json['isAnswered'] as bool,
    notifier: json['notifier'] as bool,
  );
}

Map<String, dynamic> _$_$_EstadoPlayRoomToJson(_$_EstadoPlayRoom instance) =>
    <String, dynamic>{
      'generatedNumber': instance.generatedNumber,
      'numberType': instance.numberType,
      'isCorrect': instance.isCorrect,
      'isAnswered': instance.isAnswered,
      'notifier': instance.notifier,
    };
