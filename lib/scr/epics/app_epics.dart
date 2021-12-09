import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/get_coins.dart';
import '../actions/get_weather.dart';
import '../data/coingecko_api.dart';
import '../data/metaweather_api.dart';
import '../models/app_state.dart';
import '../models/coins.dart';
import '../models/history.dart';

class AppEpics {
  AppEpics(this._coinApi, this._weatherApi);

  final CoinGenckoApi _coinApi;
  final MetaWeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetWeather>(getWeather),
      TypedEpic<AppState, GetCoins>(getCoins),
      TypedEpic<AppState, Get1DayHistory>(get1DayHistory),
      TypedEpic<AppState, Get14DaysHistory>(get14DaysHistory),
      TypedEpic<AppState, Get30DaysHistory>(get30DaysHistory),
    ]);
  }

  Stream<dynamic> getWeather(Stream<GetWeather> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetWeather action) => Stream<void>.value(null)
        .switchMap((_) => Stream.periodic(const Duration(seconds: 10)))
        .asyncMap((_) => _weatherApi.getWeather())
        .map<Object>((Map<String, dynamic> info) => GetWeatherSuccessful(info))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeatherError(error))
        .doOnData(action.result));
  }

  Stream<dynamic> getCoins(Stream<GetCoins> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCoins action) => Stream<void>.value(null)
        .asyncMap((_) => _coinApi.getCoins())
        .map<Object>((List<Coins> coins) => GetCoinsSuccessful(coins))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCoinsError(error))
        .doOnData(action.result));
  }

  Stream<dynamic> get1DayHistory(Stream<Get1DayHistory> actions, EpicStore<AppState> store) {
    return actions.flatMap((Get1DayHistory action) => Stream<void>.value(null)
        .asyncMap((_) => _coinApi.getHistory(1))
        .map<Object>((List<History> coin) => Get1DayHistorySuccessful(coin))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => Get1DayHistoryError(error))
        .doOnData(action.result));
  }

  Stream<dynamic> get14DaysHistory(Stream<Get14DaysHistory> actions, EpicStore<AppState> store) {
    return actions.flatMap((Get14DaysHistory action) => Stream<void>.value(null)
        .asyncMap((_) => _coinApi.getHistory(14))
        .map<Object>((List<History> coin) => Get14DaysHistorySuccessful(coin))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => Get14DaysHistoryError(error))
        .doOnData(action.result));
  }

  Stream<dynamic> get30DaysHistory(Stream<Get30DaysHistory> actions, EpicStore<AppState> store) {
    return actions.flatMap((Get30DaysHistory action) => Stream<void>.value(null)
        .asyncMap((_) => _coinApi.getHistory(30))
        .map<Object>((List<History> coin) => Get30DaysHistorySuccessful(coin))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => Get30DaysHistoryError(error))
        .doOnData(action.result));
  }
}
