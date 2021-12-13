import 'dart:convert';

import 'package:http/http.dart';
import 'package:location/location.dart';

class MetaWeatherApi {
  Future<Map<String, dynamic>> getWeather() async {
    final Location location = Location();
    LocationData _locationData;
    _locationData = await location.getLocation();
    final Map<String, dynamic> info = <String, dynamic>{};

    final Uri uri = Uri(
      scheme: 'https',
      host: 'www.metaweather.com',
      pathSegments: <String>['api', 'location', 'search', ''],
      queryParameters: <String, String>{
        'lattlong': '${_locationData.latitude},${_locationData.longitude}',
      },
    );

    final Response response = await get(uri);
    if (response.statusCode != 200) {
      throw StateError('Error fetching the tokens');
    }

    final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;

    final Uri uri2 = Uri(
      scheme: 'https',
      host: 'www.metaweather.com',
      pathSegments: <String>['api', 'location', "${data[0]['woeid']}", ''],
    );

    final Response response2 = await get(uri2);
    if (response2.statusCode != 200) {
      throw StateError('Error fetching the tokens');
    }

    final Map<String, dynamic> data2 = jsonDecode(response2.body) as Map<String, dynamic>;

    info['city'] = "${data[0]['title']}";
    info['wts'] = "${data2['consolidated_weather'][0]['weather_state_name']}";
    info['mint'] = "${data2['consolidated_weather'][0]['min_temp']}";
    info['maxt'] = "${data2['consolidated_weather'][0]['max_temp']}";
    info['thet'] = "${data2['consolidated_weather'][0]['the_temp']}";
    info['humidity'] = "${data2['consolidated_weather'][0]['humidity']}";
    info['visibility'] = "${data2['consolidated_weather'][0]['visibility']}";

    //weather_state_icon
    switch (data2['consolidated_weather'][0]['weather_state_abbr']) {
      case 'sn':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/sn.png';
        }
        break;
      case 'sl':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/sl.png';
        }
        break;
      case 'h':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/h.png';
        }
        break;
      case 't':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/t.png';
        }
        break;
      case 'hr':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/hr.png';
        }
        break;
      case 'lr':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/lr.png';
        }
        break;
      case 's':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/s.png';
        }
        break;
      case 'hc':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/hc.png';
        }
        break;
      case 'lc':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/lc.png';
        }
        break;
      case 'c':
        {
          info['wti'] = 'https://www.metaweather.com//static/img/weather/png/64/c.png';
        }
        break;
    }

    return info;
  }
}
