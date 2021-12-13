// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

History _$HistoryFromJson(Map<String, dynamic> json) {
  return History$.fromJson(json);
}

/// @nodoc
class _$HistoryTearOff {
  const _$HistoryTearOff();

  History$ call({double time = 0.00, double value = 0.00}) {
    return History$(
      time: time,
      value: value,
    );
  }

  History fromJson(Map<String, Object?> json) {
    return History.fromJson(json);
  }
}

/// @nodoc
const $History = _$HistoryTearOff();

/// @nodoc
mixin _$History {
  double get time => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res>;
  $Res call({double time, double value});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res> implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  final History _value;
  // ignore: unused_field
  final $Res Function(History) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $History$CopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory $History$CopyWith(History$ value, $Res Function(History$) then) =
      _$History$CopyWithImpl<$Res>;
  @override
  $Res call({double time, double value});
}

/// @nodoc
class _$History$CopyWithImpl<$Res> extends _$HistoryCopyWithImpl<$Res>
    implements $History$CopyWith<$Res> {
  _$History$CopyWithImpl(History$ _value, $Res Function(History$) _then)
      : super(_value, (v) => _then(v as History$));

  @override
  History$ get _value => super._value as History$;

  @override
  $Res call({
    Object? time = freezed,
    Object? value = freezed,
  }) {
    return _then(History$(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$History$ implements History$ {
  const _$History$({this.time = 0.00, this.value = 0.00});

  factory _$History$.fromJson(Map<String, dynamic> json) =>
      _$$History$FromJson(json);

  @JsonKey(defaultValue: 0.00)
  @override
  final double time;
  @JsonKey(defaultValue: 0.00)
  @override
  final double value;

  @override
  String toString() {
    return 'History(time: $time, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is History$ &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $History$CopyWith<History$> get copyWith =>
      _$History$CopyWithImpl<History$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$History$ToJson(this);
  }
}

abstract class History$ implements History {
  const factory History$({double time, double value}) = _$History$;

  factory History$.fromJson(Map<String, dynamic> json) = _$History$.fromJson;

  @override
  double get time;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  $History$CopyWith<History$> get copyWith =>
      throw _privateConstructorUsedError;
}
