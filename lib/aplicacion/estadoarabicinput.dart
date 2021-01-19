import 'package:freezed_annotation/freezed_annotation.dart';

part 'estadoarabicinput.freezed.dart';
part 'estadoarabicinput.g.dart';

@freezed
abstract class EstadoArabicInput with _$EstadoArabicInput {
  factory EstadoArabicInput({
    @required String respuesta,
  }) = _EstadoArabicInput;

  factory EstadoArabicInput.inicial() => _EstadoArabicInput(
        respuesta: '',
      );

  factory EstadoArabicInput.fromJson(Map<String, dynamic> json) =>
      _$EstadoArabicInputFromJson(json);
}
