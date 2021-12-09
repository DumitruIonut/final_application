import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';
import '../models/coins.dart';
import '../models/history.dart';

class CoinsContainer extends StatelessWidget {
  const CoinsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Coins>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Coins>>(
      converter: (Store<AppState> store) {
        return store.state.coins;
      },
      builder: builder,
    );
  }
}

class History1dayContainer extends StatelessWidget {
  const History1dayContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<History>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<History>>(
      converter: (Store<AppState> store) {
        return store.state.history1Day;
      },
      builder: builder,
    );
  }
}

class History14daysContainer extends StatelessWidget {
  const History14daysContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<History>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<History>>(
      converter: (Store<AppState> store) {
        return store.state.history14Days;
      },
      builder: builder,
    );
  }
}

class History30daysContainer extends StatelessWidget {
  const History30daysContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<History>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<History>>(
      converter: (Store<AppState> store) {
        return store.state.history30Days;
      },
      builder: builder,
    );
  }
}
