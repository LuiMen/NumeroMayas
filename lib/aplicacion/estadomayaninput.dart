import 'package:freezed_annotation/freezed_annotation.dart';

import '../dominio/mayan_number.dart';

part 'estadomayaninput.freezed.dart';
part 'estadomayaninput.g.dart';

@freezed
abstract class EstadoMayanInput with _$EstadoMayanInput {
  factory EstadoMayanInput({
    @required List<Map<MayanNumbers, int>> niveles,
    @required int seleccionado,
  }) = _EstadoMayanInput;

  factory EstadoMayanInput.inicial() => _EstadoMayanInput(
        seleccionado: 0,
        niveles: [
          {MayanNumbers.one: 0, MayanNumbers.five: 0},
        ],
      );

  factory EstadoMayanInput.fromJson(Map<String, dynamic> json) =>
      _$EstadoMayanInputFromJson(json);
}
