import 'package:redux/redux.dart';

import '../actions/get_coins.dart';
import '../actions/get_weather.dart';
import '../models/app_state.dart';
import '../models/coins.dart';
import '../models/history.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetCoins>(_getCoins),
  TypedReducer<AppState, GetCoinsSuccessful>(_getCoinsSuccessful),
  TypedReducer<AppState, GetCoinsError>(_getCoinsError),
  TypedReducer<AppState, GetWeather>(_getWeather),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(_getWeatherError),
  TypedReducer<AppState, GetSelectedCoin>(_selectedCoin),
  TypedReducer<AppState, GetSelectedCoinSuccessful>(_selectedCoinCoinSuccessful),
  TypedReducer<AppState, GetSelectedCoinError>(_selectedCoinCoinError),
  TypedReducer<AppState, Get1DayHistory>(_get1DayHistory),
  TypedReducer<AppState, Get1DayHistorySuccessful>(_get1DayHistorySuccessful),
  TypedReducer<AppState, Get1DayHistoryError>(_get1DayHistoryError),
  TypedReducer<AppState, Get14DaysHistory>(_get14DaysHistory),
  TypedReducer<AppState, Get14DaysHistorySuccessful>(_get14DaysHistorySuccessful),
  TypedReducer<AppState, Get14DaysHistoryError>(_get14DaysHistoryError),
  TypedReducer<AppState, Get30DaysHistory>(_get30DaysHistory),
  TypedReducer<AppState, Get30DaysHistorySuccessful>(_get30DaysHistorySuccessful),
  TypedReducer<AppState, Get30DaysHistoryError>(_get30DaysHistoryError),
]);

AppState _getCoins(AppState state, GetCoins action) {
  return state.copyWith(isLoadingCoinApi: true);
}

AppState _getCoinsSuccessful(AppState state, GetCoinsSuccessful action) {
  final List<Coins> coins = <Coins>[];
  coins.addAll(state.coins);
  coins.addAll(action.coins);

  return state.copyWith(
    coins: coins,
    isLoadingCoinApi: false,
  );
}

AppState _getCoinsError(AppState state, GetCoinsError action) {
  return state.copyWith(isLoadingCoinApi: false);
}

AppState _getWeather(AppState state, GetWeather action) {
  return state.copyWith(isLoadingWeatherApi: true);
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  final Map<String, dynamic> info = <String, dynamic>{};
  info.addAll(action.info);

  return state.copyWith(
    info: info,
    isLoadingWeatherApi: false,
  );
}

AppState _getWeatherError(AppState state, GetWeatherError action) {
  return state.copyWith(isLoadingWeatherApi: false);
}

AppState _selectedCoin(AppState state, GetSelectedCoin action) {
  return state.copyWith(selectedCoin: action.selectedCoins);
}

AppState _selectedCoinCoinSuccessful(AppState state, GetSelectedCoinSuccessful action) {
  final Coins selectedCoin = <String, dynamic>{} as Coins;

  return state.copyWith(
    selectedCoin: selectedCoin,
    isLoadingCoinApi: false,
  );
}

AppState _selectedCoinCoinError(AppState state, GetSelectedCoinError action) {
  return state.copyWith(selectedCoin: null);
}

AppState _get1DayHistory(AppState state, Get1DayHistory action) {
  return state.copyWith(isLoadingHistoryApi: true);
}

AppState _get1DayHistorySuccessful(AppState state, Get1DayHistorySuccessful action) {
  final List<History> history1Day = <History>[];
  history1Day.addAll(action.history1Day);

  return state.copyWith(
    history1Day: history1Day,
    dataLoadComplete: true,
    isLoadingHistoryApi: false,
  );
}

AppState _get1DayHistoryError(AppState state, Get1DayHistoryError action) {
  return state.copyWith(isLoadingHistoryApi: false);
}

AppState _get14DaysHistory(AppState state, Get14DaysHistory action) {
  return state.copyWith(isLoadingHistoryApi: true);
}

AppState _get14DaysHistorySuccessful(AppState state, Get14DaysHistorySuccessful action) {
  final List<History> history14Days = <History>[];
  history14Days.addAll(action.history14Days);

  return state.copyWith(
    history14Days: history14Days,
    dataLoadComplete: true,
    isLoadingHistoryApi: false,
  );
}

AppState _get14DaysHistoryError(AppState state, Get14DaysHistoryError action) {
  return state.copyWith(isLoadingHistoryApi: false);
}

AppState _get30DaysHistory(AppState state, Get30DaysHistory action) {
  return state.copyWith(isLoadingHistoryApi: true);
}

AppState _get30DaysHistorySuccessful(AppState state, Get30DaysHistorySuccessful action) {
  final List<History> history30Days = <History>[];
  history30Days.addAll(action.history30Days);

  return state.copyWith(
    history30Days: history30Days,
    dataLoadComplete: true,
    isLoadingHistoryApi: false,
  );
}

AppState _get30DaysHistoryError(AppState state, Get30DaysHistoryError action) {
  return state.copyWith(isLoadingHistoryApi: false);
}
