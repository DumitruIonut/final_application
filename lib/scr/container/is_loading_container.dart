import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';

class IsLoadingCoinContainer extends StatelessWidget {
  const IsLoadingCoinContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        return store.state.isLoadingCoinApi;
      },
      builder: builder,
    );
  }
}

class IsLoadingWeatherContainer extends StatelessWidget {
  const IsLoadingWeatherContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        return store.state.isLoadingWeatherApi;
      },
      builder: builder,
    );
  }
}

class IsLoadingHistoryApiContainer extends StatelessWidget {
  const IsLoadingHistoryApiContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        return store.state.isLoadingHistoryApi;
      },
      builder: builder,
    );
  }
}
