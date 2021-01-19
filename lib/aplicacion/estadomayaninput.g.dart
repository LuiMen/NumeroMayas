// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estadomayaninput.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstadoMayanInput _$_$_EstadoMayanInputFromJson(Map<String, dynamic> json) {
  return _$_EstadoMayanInput(
    niveles: (json['niveles'] as List)
        ?.map((e) => (e as Map<String, dynamic>)?.map(
              (k, e) => MapEntry(
                  _$enumDecodeNullable(_$MayanNumbersEnumMap, k), e as int),
            ))
        ?.toList(),
    seleccionado: json['seleccionado'] as int,
  );
}

Map<String, dynamic> _$_$_EstadoMayanInputToJson(
        _$_EstadoMayanInput instance) =>
    <String, dynamic>{
      'niveles': instance.niveles
          ?.map((e) => e?.map((k, e) => MapEntry(_$MayanNumbersEnumMap[k], e)))
          ?.toList(),
      'seleccionado': instance.seleccionado,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$MayanNumbersEnumMap = {
  MayanNumbers.zero: 'zero',
  MayanNumbers.one: 'one',
  MayanNumbers.five: 'five',
};
