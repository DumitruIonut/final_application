import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../actions/get_coins.dart';
import '../actions/get_weather.dart';
import '../container/coins_container.dart';
import '../container/is_loading_container.dart';
import '../container/weather_container.dart';
import '../models/app_state.dart';
import '../models/coins.dart';
import '../models/history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(GetCoins(onResult));
    store.dispatch(GetWeather(onResult));
  }

  void onResult(dynamic action) {
    if (action is GetCoinsError) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error getting coins'),
            content: Text('${action.error}'),
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Final application'),
        actions: <Widget>[
          IsLoadingCoinContainer(
            builder: (BuildContext context, bool isLoadingCoinApi) {
              if (!isLoadingCoinApi) {
                return const SizedBox.shrink();
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              controller: _controller,
              children: <Widget>[
                CoinsContainer(
                  builder: (BuildContext context, List<Coins> coins) {
                    return IsLoadingCoinContainer(
                      builder: (BuildContext context, bool isLoadingCoinApi) {
                        if (!isLoadingCoinApi) {
                          return TextDropdownFormField(
                            onChanged: (dynamic value) {
                              setState(() {
                                final Store<AppState> store = StoreProvider.of<AppState>(context);
                                store.state.coins
                                    .map((Coins e) => <dynamic>[
                                          if (e.name == value) <void>{store.dispatch(GetSelectedCoin(e))}
                                        ])
                                    .toList();
                                store.dispatch(Get1DayHistory(onResult));
                                store.dispatch(Get14DaysHistory(onResult));
                                store.dispatch(Get30DaysHistory(onResult));
                              });
                            },
                            options: coins.map((Coins e) => e.name).toList(),
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.arrow_drop_down),
                                labelText: 'Coins'),
                            dropdownHeight: 240,
                          );
                        }

                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                  },
                ),
                IsLoadingHistoryApiContainer(
                  builder: (BuildContext context, bool isLoadingCoinApi) {
                    if (!isLoadingCoinApi) {
                      return Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: <Widget>[
                          History1dayContainer(builder: (BuildContext context, List<History> history) {
                            return SfCartesianChart(
                                primaryXAxis: CategoryAxis(
                                  isVisible: false,
                                ),
                                title: ChartTitle(text: '24h History'),
                                legend: Legend(isVisible: false),
                                tooltipBehavior: TooltipBehavior(enable: false),
                                series: <ChartSeries<History, double>>[
                                  LineSeries<History, double>(
                                    dataSource: history,
                                    xValueMapper: (History data, _) => data.time,
                                    yValueMapper: (History data, _) => data.value,
                                    name: 'history',
                                    dataLabelSettings: const DataLabelSettings(),
                                  )
                                ]);
                          }),
                          History14daysContainer(builder: (BuildContext context, List<History> history) {
                            return SfCartesianChart(
                                primaryXAxis: CategoryAxis(
                                  isVisible: false,
                                ),
                                // Chart title
                                title: ChartTitle(text: '14d History'),
                                // Enable legend
                                legend: Legend(isVisible: false),
                                // Enable tooltip
                                tooltipBehavior: TooltipBehavior(enable: false),
                                // final Store<AppState> store = StoreProvider.of<AppState>(context);
                                series: <ChartSeries<History, double>>[
                                  LineSeries<History, double>(
                                    dataSource: history,
                                    xValueMapper: (History data, _) => data.time,
                                    yValueMapper: (History data, _) => data.value,
                                    name: 'history',
                                    // Enable data label
                                    dataLabelSettings: const DataLabelSettings(),
                                  )
                                ]);
                          }),
                          History30daysContainer(builder: (BuildContext context, List<History> history) {
                            return SfCartesianChart(
                                primaryXAxis: CategoryAxis(
                                  isVisible: false,
                                ),
                                // Chart title
                                title: ChartTitle(text: '30d History'),
                                // Enable legend
                                legend: Legend(isVisible: false),
                                // Enable tooltip
                                tooltipBehavior: TooltipBehavior(enable: false),
                                // final Store<AppState> store = StoreProvider.of<AppState>(context);
                                series: <ChartSeries<History, double>>[
                                  LineSeries<History, double>(
                                    dataSource: history,
                                    xValueMapper: (History data, _) => data.time,
                                    yValueMapper: (History data, _) => data.value,
                                    name: 'history',
                                    // Enable data label
                                    dataLabelSettings: const DataLabelSettings(),
                                  )
                                ]);
                          }),
                        ],
                      );
                    }
                    final Store<AppState> store = StoreProvider.of<AppState>(context);
                    if (store.state.dataLoadComplete) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              controller: _controller,
              children: <Widget>[
                IsLoadingWeatherContainer(
                  builder: (BuildContext context, bool isLoadingWeatherApi) {
                    if (!isLoadingWeatherApi) {
                      return const SizedBox.shrink();
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                WeatherContainer(
                  builder: (BuildContext context, Map<String, dynamic> data) {
                    final Store<AppState> store = StoreProvider.of<AppState>(context);
                    if (store.state.isLoadingWeatherApi) {
                      return const Text('');
                    }
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "${data['city']}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFFA0C9C5),
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image.network("${data['wti']}"),
                        ),
                        Text(
                          "${double.parse("${data['thet']}").round()} \u00B0",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFFA0C9C5),
                            fontSize: 32.0,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                CoinsContainer(builder: (BuildContext context, List<Coins> coins) {
                  final Store<AppState> store = StoreProvider.of<AppState>(context);
                  if (store.state.selectedCoin != null) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Image.network(store.state.selectedCoin!.image),
                          ),
                          Column(
                            children: <Widget>[
                              const Text(
                                'Current price:       ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFFA0C9C5),
                                  fontSize: 14.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  '${store.state.selectedCoin!.currentPrice}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xFFA0C9C5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Text(
                                'Low 24h:             ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFA0C9C5),
                                  fontSize: 14.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  '${store.state.selectedCoin!.low24h}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xFFA0C9C5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Text(
                                'High 24h:          ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFA0C9C5),
                                  fontSize: 14.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  '${store.state.selectedCoin!.high24h}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xFFA0C9C5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryData {
  HistoryData(this.time, this.value);

  final double time;
  final double value;
}
