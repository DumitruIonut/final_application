import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, dynamic>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, dynamic>>(
      converter: (Store<AppState> store) {
        return store.state.info;
      },
      builder: builder,
    );
  }
}
