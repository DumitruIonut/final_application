import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'scr/data/coingecko_api.dart';
import 'scr/data/metaweather_api.dart';
import 'scr/epics/app_epics.dart';
import 'scr/models/app_state.dart';
import 'scr/presentation/home_page.dart';
import 'scr/reducer/reducer.dart';

void main() {
  final CoinGenckoApi coinsApi = CoinGenckoApi();
  final MetaWeatherApi weatherApi = MetaWeatherApi();
  final AppEpics epics = AppEpics(coinsApi, weatherApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
      },
      EpicMiddleware<AppState>(epics.epics),
    ],
  );
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // remove debug banner
        theme: ThemeData.dark(),
        home: const HomePage(),
      ),
    );
  }
}
