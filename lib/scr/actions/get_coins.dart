import '../models/coins.dart';
import '../models/history.dart';

class GetCoins {
  const GetCoins(this.result);

  final void Function(dynamic action) result;
}

class GetCoinsSuccessful {
  const GetCoinsSuccessful(this.coins);

  final List<Coins> coins;
}

class GetCoinsError {
  const GetCoinsError(this.error);

  final Object error;
}

class GetSelectedCoin {
  const GetSelectedCoin(this.selectedCoins);

  final Coins selectedCoins;
}

class GetSelectedCoinSuccessful {
  const GetSelectedCoinSuccessful(this.selectedCoin);

  final Coins selectedCoin;
}

class GetSelectedCoinError {
  const GetSelectedCoinError(this.error);

  final Object error;
}

class Get1DayHistory {
  const Get1DayHistory(this.result);

  final void Function(dynamic action) result;
}

class Get1DayHistorySuccessful {
  const Get1DayHistorySuccessful(this.history1Day);

  final List<History> history1Day;
}

class Get1DayHistoryError {
  const Get1DayHistoryError(this.error);

  final Object error;
}

class Get14DaysHistory {
  const Get14DaysHistory(this.result);

  final void Function(dynamic action) result;
}

class Get14DaysHistorySuccessful {
  const Get14DaysHistorySuccessful(this.history14Days);

  final List<History> history14Days;
}

class Get14DaysHistoryError {
  const Get14DaysHistoryError(this.error);

  final Object error;
}

class Get30DaysHistory {
  const Get30DaysHistory(this.result);

  final void Function(dynamic action) result;
}

class Get30DaysHistorySuccessful {
  const Get30DaysHistorySuccessful(this.history30Days);

  final List<History> history30Days;
}

class Get30DaysHistoryError {
  const Get30DaysHistoryError(this.error);

  final Object error;
}
