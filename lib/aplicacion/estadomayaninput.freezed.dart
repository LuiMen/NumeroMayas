// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'estadomayaninput.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EstadoMayanInput _$EstadoMayanInputFromJson(Map<String, dynamic> json) {
  return _EstadoMayanInput.fromJson(json);
}

/// @nodoc
class _$EstadoMayanInputTearOff {
  const _$EstadoMayanInputTearOff();

// ignore: unused_element
  _EstadoMayanInput call(
      {@required List<Map<MayanNumbers, int>> niveles,
      @required int seleccionado}) {
    return _EstadoMayanInput(
      niveles: niveles,
      seleccionado: seleccionado,
    );
  }

// ignore: unused_element
  EstadoMayanInput fromJson(Map<String, Object> json) {
    return EstadoMayanInput.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EstadoMayanInput = _$EstadoMayanInputTearOff();

/// @nodoc
mixin _$EstadoMayanInput {
  List<Map<MayanNumbers, int>> get niveles;
  int get seleccionado;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EstadoMayanInputCopyWith<EstadoMayanInput> get copyWith;
}

/// @nodoc
abstract class $EstadoMayanInputCopyWith<$Res> {
  factory $EstadoMayanInputCopyWith(
          EstadoMayanInput value, $Res Function(EstadoMayanInput) then) =
      _$EstadoMayanInputCopyWithImpl<$Res>;
  $Res call({List<Map<MayanNumbers, int>> niveles, int seleccionado});
}

/// @nodoc
class _$EstadoMayanInputCopyWithImpl<$Res>
    implements $EstadoMayanInputCopyWith<$Res> {
  _$EstadoMayanInputCopyWithImpl(this._value, this._then);

  final EstadoMayanInput _value;
  // ignore: unused_field
  final $Res Function(EstadoMayanInput) _then;

  @override
  $Res call({
    Object niveles = freezed,
    Object seleccionado = freezed,
  }) {
    return _then(_value.copyWith(
      niveles: niveles == freezed
          ? _value.niveles
          : niveles as List<Map<MayanNumbers, int>>,
      seleccionado:
          seleccionado == freezed ? _value.seleccionado : seleccionado as int,
    ));
  }
}

/// @nodoc
abstract class _$EstadoMayanInputCopyWith<$Res>
    implements $EstadoMayanInputCopyWith<$Res> {
  factory _$EstadoMayanInputCopyWith(
          _EstadoMayanInput value, $Res Function(_EstadoMayanInput) then) =
      __$EstadoMayanInputCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<MayanNumbers, int>> niveles, int seleccionado});
}

/// @nodoc
class __$EstadoMayanInputCopyWithImpl<$Res>
    extends _$EstadoMayanInputCopyWithImpl<$Res>
    implements _$EstadoMayanInputCopyWith<$Res> {
  __$EstadoMayanInputCopyWithImpl(
      _EstadoMayanInput _value, $Res Function(_EstadoMayanInput) _then)
      : super(_value, (v) => _then(v as _EstadoMayanInput));

  @override
  _EstadoMayanInput get _value => super._value as _EstadoMayanInput;

  @override
  $Res call({
    Object niveles = freezed,
    Object seleccionado = freezed,
  }) {
    return _then(_EstadoMayanInput(
      niveles: niveles == freezed
          ? _value.niveles
          : niveles as List<Map<MayanNumbers, int>>,
      seleccionado:
          seleccionado == freezed ? _value.seleccionado : seleccionado as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EstadoMayanInput implements _EstadoMayanInput {
  _$_EstadoMayanInput({@required this.niveles, @required this.seleccionado})
      : assert(niveles != null),
        assert(seleccionado != null);

  factory _$_EstadoMayanInput.fromJson(Map<String, dynamic> json) =>
      _$_$_EstadoMayanInputFromJson(json);

  @override
  final List<Map<MayanNumbers, int>> niveles;
  @override
  final int seleccionado;

  @override
  String toString() {
    return 'EstadoMayanInput(niveles: $niveles, seleccionado: $seleccionado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstadoMayanInput &&
            (identical(other.niveles, niveles) ||
                const DeepCollectionEquality()
                    .equals(other.niveles, niveles)) &&
            (identical(other.seleccionado, seleccionado) ||
                const DeepCollectionEquality()
                    .equals(other.seleccionado, seleccionado)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(niveles) ^
      const DeepCollectionEquality().hash(seleccionado);

  @JsonKey(ignore: true)
  @override
  _$EstadoMayanInputCopyWith<_EstadoMayanInput> get copyWith =>
      __$EstadoMayanInputCopyWithImpl<_EstadoMayanInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstadoMayanInputToJson(this);
  }
}

abstract class _EstadoMayanInput implements EstadoMayanInput {
  factory _EstadoMayanInput(
      {@required List<Map<MayanNumbers, int>> niveles,
      @required int seleccionado}) = _$_EstadoMayanInput;

  factory _EstadoMayanInput.fromJson(Map<String, dynamic> json) =
      _$_EstadoMayanInput.fromJson;

  @override
  List<Map<MayanNumbers, int>> get niveles;
  @override
  int get seleccionado;
  @override
  @JsonKey(ignore: true)
  _$EstadoMayanInputCopyWith<_EstadoMayanInput> get copyWith;
}
