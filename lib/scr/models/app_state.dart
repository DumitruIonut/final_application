import 'package:freezed_annotation/freezed_annotation.dart';
import 'coins.dart';
import 'history.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Coins>[]) List<Coins> coins,
    @Default(false) bool isLoadingCoinApi,
    @Default(false) bool isLoadingWeatherApi,
    @Default(true) bool isLoadingHistoryApi,
    @Default(false) bool dataLoadComplete,
    @Default(<String, dynamic>{}) Map<String, dynamic> info,
    @Default(false) bool isServiceEnabled,
    Coins? selectedCoin,
    @Default(<History>[]) List<History> history1Day,
    @Default(<History>[]) List<History> history14Days,
    @Default(<History>[]) List<History> history30Days,
  }) = AppState$;
}
