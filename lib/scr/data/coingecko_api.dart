import 'dart:convert';

import 'package:http/http.dart';

import '../models/coins.dart';
import '../models/history.dart';

class CoinGenckoApi {
  final String _apiVersion = 'v3';

  Future<List<Coins>> getCoins() async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'api.coingecko.com',
      pathSegments: <String>['api', _apiVersion, 'coins', 'markets'],
      queryParameters: <String, String>{
        'vs_currency': 'eur',
      },
    );
    final Response response = await get(uri);
    if (response.statusCode != 200) {
      throw StateError('Error fetching the tokens');
    }

    final List<dynamic> data = jsonDecode(response.body);

    return data.map((item) => Coins.fromJson(item)).toList();
  }

  // 1,14,30 days - allow values
  Future<List<History>> getHistory(int day) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'api.coingecko.com',
      pathSegments: <String>['api', _apiVersion, 'coins', 'bitcoin', 'market_chart'],
      queryParameters: <String, String>{
        'vs_currency': 'usd',
        'days': '$day',
      },
    );

    final Response response = await get(uri);

    if (response.statusCode != 200) {
      throw StateError('Error fetching the tokens');
    }

    final Map<dynamic, dynamic> info = jsonDecode(response.body);
    final List<dynamic> data = info['prices'];

    return data.map((item) => History.fromJson({'time': item[0], 'value': item[1]})).toList();
  }
}
