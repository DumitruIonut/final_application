class GetWeather {
  const GetWeather(this.result);

  final void Function(dynamic action) result;
}

class GetWeatherSuccessful {
  const GetWeatherSuccessful(this.info);

  final Map<String, dynamic> info;
}

class GetWeatherError {
  const GetWeatherError(this.error);

  final Object error;
}
