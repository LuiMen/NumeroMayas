// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'estadoarabicinput.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EstadoArabicInput _$EstadoArabicInputFromJson(Map<String, dynamic> json) {
  return _EstadoArabicInput.fromJson(json);
}

/// @nodoc
class _$EstadoArabicInputTearOff {
  const _$EstadoArabicInputTearOff();

// ignore: unused_element
  _EstadoArabicInput call({@required String respuesta}) {
    return _EstadoArabicInput(
      respuesta: respuesta,
    );
  }

// ignore: unused_element
  EstadoArabicInput fromJson(Map<String, Object> json) {
    return EstadoArabicInput.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EstadoArabicInput = _$EstadoArabicInputTearOff();

/// @nodoc
mixin _$EstadoArabicInput {
  String get respuesta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EstadoArabicInputCopyWith<EstadoArabicInput> get copyWith;
}

/// @nodoc
abstract class $EstadoArabicInputCopyWith<$Res> {
  factory $EstadoArabicInputCopyWith(
          EstadoArabicInput value, $Res Function(EstadoArabicInput) then) =
      _$EstadoArabicInputCopyWithImpl<$Res>;
  $Res call({String respuesta});
}

/// @nodoc
class _$EstadoArabicInputCopyWithImpl<$Res>
    implements $EstadoArabicInputCopyWith<$Res> {
  _$EstadoArabicInputCopyWithImpl(this._value, this._then);

  final EstadoArabicInput _value;
  // ignore: unused_field
  final $Res Function(EstadoArabicInput) _then;

  @override
  $Res call({
    Object respuesta = freezed,
  }) {
    return _then(_value.copyWith(
      respuesta: respuesta == freezed ? _value.respuesta : respuesta as String,
    ));
  }
}

/// @nodoc
abstract class _$EstadoArabicInputCopyWith<$Res>
    implements $EstadoArabicInputCopyWith<$Res> {
  factory _$EstadoArabicInputCopyWith(
          _EstadoArabicInput value, $Res Function(_EstadoArabicInput) then) =
      __$EstadoArabicInputCopyWithImpl<$Res>;
  @override
  $Res call({String respuesta});
}

/// @nodoc
class __$EstadoArabicInputCopyWithImpl<$Res>
    extends _$EstadoArabicInputCopyWithImpl<$Res>
    implements _$EstadoArabicInputCopyWith<$Res> {
  __$EstadoArabicInputCopyWithImpl(
      _EstadoArabicInput _value, $Res Function(_EstadoArabicInput) _then)
      : super(_value, (v) => _then(v as _EstadoArabicInput));

  @override
  _EstadoArabicInput get _value => super._value as _EstadoArabicInput;

  @override
  $Res call({
    Object respuesta = freezed,
  }) {
    return _then(_EstadoArabicInput(
      respuesta: respuesta == freezed ? _value.respuesta : respuesta as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EstadoArabicInput implements _EstadoArabicInput {
  _$_EstadoArabicInput({@required this.respuesta}) : assert(respuesta != null);

  factory _$_EstadoArabicInput.fromJson(Map<String, dynamic> json) =>
      _$_$_EstadoArabicInputFromJson(json);

  @override
  final String respuesta;

  @override
  String toString() {
    return 'EstadoArabicInput(respuesta: $respuesta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstadoArabicInput &&
            (identical(other.respuesta, respuesta) ||
                const DeepCollectionEquality()
                    .equals(other.respuesta, respuesta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(respuesta);

  @JsonKey(ignore: true)
  @override
  _$EstadoArabicInputCopyWith<_EstadoArabicInput> get copyWith =>
      __$EstadoArabicInputCopyWithImpl<_EstadoArabicInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstadoArabicInputToJson(this);
  }
}

abstract class _EstadoArabicInput implements EstadoArabicInput {
  factory _EstadoArabicInput({@required String respuesta}) =
      _$_EstadoArabicInput;

  factory _EstadoArabicInput.fromJson(Map<String, dynamic> json) =
      _$_EstadoArabicInput.fromJson;

  @override
  String get respuesta;
  @override
  @JsonKey(ignore: true)
  _$EstadoArabicInputCopyWith<_EstadoArabicInput> get copyWith;
}
