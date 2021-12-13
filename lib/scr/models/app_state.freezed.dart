// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call(
      {List<Coins> coins = const <Coins>[],
      bool isLoadingCoinApi = false,
      bool isLoadingWeatherApi = false,
      bool isLoadingHistoryApi = true,
      bool dataLoadComplete = false,
      Map<String, dynamic> info = const <String, dynamic>{},
      bool isServiceEnabled = false,
      Coins? selectedCoin,
      List<History> history1Day = const <History>[],
      List<History> history14Days = const <History>[],
      List<History> history30Days = const <History>[]}) {
    return AppState$(
      coins: coins,
      isLoadingCoinApi: isLoadingCoinApi,
      isLoadingWeatherApi: isLoadingWeatherApi,
      isLoadingHistoryApi: isLoadingHistoryApi,
      dataLoadComplete: dataLoadComplete,
      info: info,
      isServiceEnabled: isServiceEnabled,
      selectedCoin: selectedCoin,
      history1Day: history1Day,
      history14Days: history14Days,
      history30Days: history30Days,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<Coins> get coins => throw _privateConstructorUsedError;
  bool get isLoadingCoinApi => throw _privateConstructorUsedError;
  bool get isLoadingWeatherApi => throw _privateConstructorUsedError;
  bool get isLoadingHistoryApi => throw _privateConstructorUsedError;
  bool get dataLoadComplete => throw _privateConstructorUsedError;
  Map<String, dynamic> get info => throw _privateConstructorUsedError;
  bool get isServiceEnabled => throw _privateConstructorUsedError;
  Coins? get selectedCoin => throw _privateConstructorUsedError;
  List<History> get history1Day => throw _privateConstructorUsedError;
  List<History> get history14Days => throw _privateConstructorUsedError;
  List<History> get history30Days => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {List<Coins> coins,
      bool isLoadingCoinApi,
      bool isLoadingWeatherApi,
      bool isLoadingHistoryApi,
      bool dataLoadComplete,
      Map<String, dynamic> info,
      bool isServiceEnabled,
      Coins? selectedCoin,
      List<History> history1Day,
      List<History> history14Days,
      List<History> history30Days});

  $CoinsCopyWith<$Res>? get selectedCoin;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? coins = freezed,
    Object? isLoadingCoinApi = freezed,
    Object? isLoadingWeatherApi = freezed,
    Object? isLoadingHistoryApi = freezed,
    Object? dataLoadComplete = freezed,
    Object? info = freezed,
    Object? isServiceEnabled = freezed,
    Object? selectedCoin = freezed,
    Object? history1Day = freezed,
    Object? history14Days = freezed,
    Object? history30Days = freezed,
  }) {
    return _then(_value.copyWith(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coins>,
      isLoadingCoinApi: isLoadingCoinApi == freezed
          ? _value.isLoadingCoinApi
          : isLoadingCoinApi // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingWeatherApi: isLoadingWeatherApi == freezed
          ? _value.isLoadingWeatherApi
          : isLoadingWeatherApi // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingHistoryApi: isLoadingHistoryApi == freezed
          ? _value.isLoadingHistoryApi
          : isLoadingHistoryApi // ignore: cast_nullable_to_non_nullable
              as bool,
      dataLoadComplete: dataLoadComplete == freezed
          ? _value.dataLoadComplete
          : dataLoadComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isServiceEnabled: isServiceEnabled == freezed
          ? _value.isServiceEnabled
          : isServiceEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCoin: selectedCoin == freezed
          ? _value.selectedCoin
          : selectedCoin // ignore: cast_nullable_to_non_nullable
              as Coins?,
      history1Day: history1Day == freezed
          ? _value.history1Day
          : history1Day // ignore: cast_nullable_to_non_nullable
              as List<History>,
      history14Days: history14Days == freezed
          ? _value.history14Days
          : history14Days // ignore: cast_nullable_to_non_nullable
              as List<History>,
      history30Days: history30Days == freezed
          ? _value.history30Days
          : history30Days // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ));
  }

  @override
  $CoinsCopyWith<$Res>? get selectedCoin {
    if (_value.selectedCoin == null) {
      return null;
    }

    return $CoinsCopyWith<$Res>(_value.selectedCoin!, (value) {
      return _then(_value.copyWith(selectedCoin: value));
    });
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) =
      _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Coins> coins,
      bool isLoadingCoinApi,
      bool isLoadingWeatherApi,
      bool isLoadingHistoryApi,
      bool dataLoadComplete,
      Map<String, dynamic> info,
      bool isServiceEnabled,
      Coins? selectedCoin,
      List<History> history1Day,
      List<History> history14Days,
      List<History> history30Days});

  @override
  $CoinsCopyWith<$Res>? get selectedCoin;
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? coins = freezed,
    Object? isLoadingCoinApi = freezed,
    Object? isLoadingWeatherApi = freezed,
    Object? isLoadingHistoryApi = freezed,
    Object? dataLoadComplete = freezed,
    Object? info = freezed,
    Object? isServiceEnabled = freezed,
    Object? selectedCoin = freezed,
    Object? history1Day = freezed,
    Object? history14Days = freezed,
    Object? history30Days = freezed,
  }) {
    return _then(AppState$(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coins>,
      isLoadingCoinApi: isLoadingCoinApi == freezed
          ? _value.isLoadingCoinApi
          : isLoadingCoinApi // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingWeatherApi: isLoadingWeatherApi == freezed
          ? _value.isLoadingWeatherApi
          : isLoadingWeatherApi // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingHistoryApi: isLoadingHistoryApi == freezed
          ? _value.isLoadingHistoryApi
          : isLoadingHistoryApi // ignore: cast_nullable_to_non_nullable
              as bool,
      dataLoadComplete: dataLoadComplete == freezed
          ? _value.dataLoadComplete
          : dataLoadComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isServiceEnabled: isServiceEnabled == freezed
          ? _value.isServiceEnabled
          : isServiceEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCoin: selectedCoin == freezed
          ? _value.selectedCoin
          : selectedCoin // ignore: cast_nullable_to_non_nullable
              as Coins?,
      history1Day: history1Day == freezed
          ? _value.history1Day
          : history1Day // ignore: cast_nullable_to_non_nullable
              as List<History>,
      history14Days: history14Days == freezed
          ? _value.history14Days
          : history14Days // ignore: cast_nullable_to_non_nullable
              as List<History>,
      history30Days: history30Days == freezed
          ? _value.history30Days
          : history30Days // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.coins = const <Coins>[],
      this.isLoadingCoinApi = false,
      this.isLoadingWeatherApi = false,
      this.isLoadingHistoryApi = true,
      this.dataLoadComplete = false,
      this.info = const <String, dynamic>{},
      this.isServiceEnabled = false,
      this.selectedCoin,
      this.history1Day = const <History>[],
      this.history14Days = const <History>[],
      this.history30Days = const <History>[]});

  @JsonKey(defaultValue: const <Coins>[])
  @override
  final List<Coins> coins;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingCoinApi;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingWeatherApi;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoadingHistoryApi;
  @JsonKey(defaultValue: false)
  @override
  final bool dataLoadComplete;
  @JsonKey(defaultValue: const <String, dynamic>{})
  @override
  final Map<String, dynamic> info;
  @JsonKey(defaultValue: false)
  @override
  final bool isServiceEnabled;
  @override
  final Coins? selectedCoin;
  @JsonKey(defaultValue: const <History>[])
  @override
  final List<History> history1Day;
  @JsonKey(defaultValue: const <History>[])
  @override
  final List<History> history14Days;
  @JsonKey(defaultValue: const <History>[])
  @override
  final List<History> history30Days;

  @override
  String toString() {
    return 'AppState(coins: $coins, isLoadingCoinApi: $isLoadingCoinApi, isLoadingWeatherApi: $isLoadingWeatherApi, isLoadingHistoryApi: $isLoadingHistoryApi, dataLoadComplete: $dataLoadComplete, info: $info, isServiceEnabled: $isServiceEnabled, selectedCoin: $selectedCoin, history1Day: $history1Day, history14Days: $history14Days, history30Days: $history30Days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.coins, coins) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingCoinApi, isLoadingCoinApi) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingWeatherApi, isLoadingWeatherApi) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingHistoryApi, isLoadingHistoryApi) &&
            const DeepCollectionEquality()
                .equals(other.dataLoadComplete, dataLoadComplete) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality()
                .equals(other.isServiceEnabled, isServiceEnabled) &&
            const DeepCollectionEquality()
                .equals(other.selectedCoin, selectedCoin) &&
            const DeepCollectionEquality()
                .equals(other.history1Day, history1Day) &&
            const DeepCollectionEquality()
                .equals(other.history14Days, history14Days) &&
            const DeepCollectionEquality()
                .equals(other.history30Days, history30Days));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coins),
      const DeepCollectionEquality().hash(isLoadingCoinApi),
      const DeepCollectionEquality().hash(isLoadingWeatherApi),
      const DeepCollectionEquality().hash(isLoadingHistoryApi),
      const DeepCollectionEquality().hash(dataLoadComplete),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(isServiceEnabled),
      const DeepCollectionEquality().hash(selectedCoin),
      const DeepCollectionEquality().hash(history1Day),
      const DeepCollectionEquality().hash(history14Days),
      const DeepCollectionEquality().hash(history30Days));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith =>
      _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {List<Coins> coins,
      bool isLoadingCoinApi,
      bool isLoadingWeatherApi,
      bool isLoadingHistoryApi,
      bool dataLoadComplete,
      Map<String, dynamic> info,
      bool isServiceEnabled,
      Coins? selectedCoin,
      List<History> history1Day,
      List<History> history14Days,
      List<History> history30Days}) = _$AppState$;

  @override
  List<Coins> get coins;
  @override
  bool get isLoadingCoinApi;
  @override
  bool get isLoadingWeatherApi;
  @override
  bool get isLoadingHistoryApi;
  @override
  bool get dataLoadComplete;
  @override
  Map<String, dynamic> get info;
  @override
  bool get isServiceEnabled;
  @override
  Coins? get selectedCoin;
  @override
  List<History> get history1Day;
  @override
  List<History> get history14Days;
  @override
  List<History> get history30Days;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}
