// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'estadoplayroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EstadoPlayRoom _$EstadoPlayRoomFromJson(Map<String, dynamic> json) {
  return _EstadoPlayRoom.fromJson(json);
}

/// @nodoc
class _$EstadoPlayRoomTearOff {
  const _$EstadoPlayRoomTearOff();

// ignore: unused_element
  _EstadoPlayRoom call(
      {@required int generatedNumber,
      int numberType,
      bool isCorrect,
      bool isAnswered,
      bool notifier}) {
    return _EstadoPlayRoom(
      generatedNumber: generatedNumber,
      numberType: numberType,
      isCorrect: isCorrect,
      isAnswered: isAnswered,
      notifier: notifier,
    );
  }

// ignore: unused_element
  EstadoPlayRoom fromJson(Map<String, Object> json) {
    return EstadoPlayRoom.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EstadoPlayRoom = _$EstadoPlayRoomTearOff();

/// @nodoc
mixin _$EstadoPlayRoom {
  int get generatedNumber;
  int get numberType;
  bool get isCorrect;
  bool get isAnswered;
  bool get notifier;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EstadoPlayRoomCopyWith<EstadoPlayRoom> get copyWith;
}

/// @nodoc
abstract class $EstadoPlayRoomCopyWith<$Res> {
  factory $EstadoPlayRoomCopyWith(
          EstadoPlayRoom value, $Res Function(EstadoPlayRoom) then) =
      _$EstadoPlayRoomCopyWithImpl<$Res>;
  $Res call(
      {int generatedNumber,
      int numberType,
      bool isCorrect,
      bool isAnswered,
      bool notifier});
}

/// @nodoc
class _$EstadoPlayRoomCopyWithImpl<$Res>
    implements $EstadoPlayRoomCopyWith<$Res> {
  _$EstadoPlayRoomCopyWithImpl(this._value, this._then);

  final EstadoPlayRoom _value;
  // ignore: unused_field
  final $Res Function(EstadoPlayRoom) _then;

  @override
  $Res call({
    Object generatedNumber = freezed,
    Object numberType = freezed,
    Object isCorrect = freezed,
    Object isAnswered = freezed,
    Object notifier = freezed,
  }) {
    return _then(_value.copyWith(
      generatedNumber: generatedNumber == freezed
          ? _value.generatedNumber
          : generatedNumber as int,
      numberType: numberType == freezed ? _value.numberType : numberType as int,
      isCorrect: isCorrect == freezed ? _value.isCorrect : isCorrect as bool,
      isAnswered:
          isAnswered == freezed ? _value.isAnswered : isAnswered as bool,
      notifier: notifier == freezed ? _value.notifier : notifier as bool,
    ));
  }
}

/// @nodoc
abstract class _$EstadoPlayRoomCopyWith<$Res>
    implements $EstadoPlayRoomCopyWith<$Res> {
  factory _$EstadoPlayRoomCopyWith(
          _EstadoPlayRoom value, $Res Function(_EstadoPlayRoom) then) =
      __$EstadoPlayRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {int generatedNumber,
      int numberType,
      bool isCorrect,
      bool isAnswered,
      bool notifier});
}

/// @nodoc
class __$EstadoPlayRoomCopyWithImpl<$Res>
    extends _$EstadoPlayRoomCopyWithImpl<$Res>
    implements _$EstadoPlayRoomCopyWith<$Res> {
  __$EstadoPlayRoomCopyWithImpl(
      _EstadoPlayRoom _value, $Res Function(_EstadoPlayRoom) _then)
      : super(_value, (v) => _then(v as _EstadoPlayRoom));

  @override
  _EstadoPlayRoom get _value => super._value as _EstadoPlayRoom;

  @override
  $Res call({
    Object generatedNumber = freezed,
    Object numberType = freezed,
    Object isCorrect = freezed,
    Object isAnswered = freezed,
    Object notifier = freezed,
  }) {
    return _then(_EstadoPlayRoom(
      generatedNumber: generatedNumber == freezed
          ? _value.generatedNumber
          : generatedNumber as int,
      numberType: numberType == freezed ? _value.numberType : numberType as int,
      isCorrect: isCorrect == freezed ? _value.isCorrect : isCorrect as bool,
      isAnswered:
          isAnswered == freezed ? _value.isAnswered : isAnswered as bool,
      notifier: notifier == freezed ? _value.notifier : notifier as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EstadoPlayRoom implements _EstadoPlayRoom {
  _$_EstadoPlayRoom(
      {@required this.generatedNumber,
      this.numberType,
      this.isCorrect,
      this.isAnswered,
      this.notifier})
      : assert(generatedNumber != null);

  factory _$_EstadoPlayRoom.fromJson(Map<String, dynamic> json) =>
      _$_$_EstadoPlayRoomFromJson(json);

  @override
  final int generatedNumber;
  @override
  final int numberType;
  @override
  final bool isCorrect;
  @override
  final bool isAnswered;
  @override
  final bool notifier;

  @override
  String toString() {
    return 'EstadoPlayRoom(generatedNumber: $generatedNumber, numberType: $numberType, isCorrect: $isCorrect, isAnswered: $isAnswered, notifier: $notifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstadoPlayRoom &&
            (identical(other.generatedNumber, generatedNumber) ||
                const DeepCollectionEquality()
                    .equals(other.generatedNumber, generatedNumber)) &&
            (identical(other.numberType, numberType) ||
                const DeepCollectionEquality()
                    .equals(other.numberType, numberType)) &&
            (identical(other.isCorrect, isCorrect) ||
                const DeepCollectionEquality()
                    .equals(other.isCorrect, isCorrect)) &&
            (identical(other.isAnswered, isAnswered) ||
                const DeepCollectionEquality()
                    .equals(other.isAnswered, isAnswered)) &&
            (identical(other.notifier, notifier) ||
                const DeepCollectionEquality()
                    .equals(other.notifier, notifier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(generatedNumber) ^
      const DeepCollectionEquality().hash(numberType) ^
      const DeepCollectionEquality().hash(isCorrect) ^
      const DeepCollectionEquality().hash(isAnswered) ^
      const DeepCollectionEquality().hash(notifier);

  @JsonKey(ignore: true)
  @override
  _$EstadoPlayRoomCopyWith<_EstadoPlayRoom> get copyWith =>
      __$EstadoPlayRoomCopyWithImpl<_EstadoPlayRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstadoPlayRoomToJson(this);
  }
}

abstract class _EstadoPlayRoom implements EstadoPlayRoom {
  factory _EstadoPlayRoom(
      {@required int generatedNumber,
      int numberType,
      bool isCorrect,
      bool isAnswered,
      bool notifier}) = _$_EstadoPlayRoom;

  factory _EstadoPlayRoom.fromJson(Map<String, dynamic> json) =
      _$_EstadoPlayRoom.fromJson;

  @override
  int get generatedNumber;
  @override
  int get numberType;
  @override
  bool get isCorrect;
  @override
  bool get isAnswered;
  @override
  bool get notifier;
  @override
  @JsonKey(ignore: true)
  _$EstadoPlayRoomCopyWith<_EstadoPlayRoom> get copyWith;
}
