import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/pages/Home_Page.dart';

class WeatherSearvice {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'b344432d9cad4e75b5e212557230502';
  // weathermodel? weatherModel;

  getweather({String? CityName}) async {
    try {
      final response = await http.get(
          Uri.parse("$baseUrl/forecast.json?key=$apiKey&q=$CityName&days=3"));
      print(response.statusCode);

      if (response.statusCode == 200) {
        WeatherModel weather;

        Map<String, dynamic> data = jsonDecode(response.body);

        weather = WeatherModel.fromjson(data);
        return weather;
      } else if (response.statusCode != 200) {
        return SnackBar(content: Text('plese try agin'));
      }
    } catch (e) {
      print(e);
    }
  }
}
