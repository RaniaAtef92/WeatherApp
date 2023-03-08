import 'package:flutter/material.dart';

class WeatherModel {
  String name;
  String date;
  double temp;
  double minTemp;
  double maxTemp;
  String condition;
  double lat;
  double lon;
  String icon;
  WeatherModel(
      {required this.date,
      required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.condition,
      required this.name,
      required this.lat,
      required this.lon,
      required this.icon});
  factory WeatherModel.fromjson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    //print('$jsonData');

    return WeatherModel(
      name: data['location']['name'],
      lat: data['location']['lat'],
      lon: data['location']['lon'],
      date: data['location']['localtime'],
      maxTemp: jsonData['maxtemp_c'],
      minTemp: jsonData['mintemp_c'],
      temp: jsonData['avgtemp_c'],
      condition: jsonData['condition']['text'],
    
     icon: jsonData['condition']['icon']);
  }
  @override
  String toString() {
    return 'tem = $temp,date=$date,condition=$condition,min=$minTemp,max=$maxTemp,name=$name,icon=$icon,lat=$lat ';
  }

  String geticon() {
    if (condition == "Partly cloudy" || condition == 'cloudy') {
      return 'assets/cloudy.png';
    } else if (condition == 'Sunny' || condition == 'Clear') {
      return 'assets/clear.png';
    } else if (condition == 'Patchy rain possible' ||
        condition == 'Light rain shower') {
      return 'assets/rainy.png';
    } else {
      return 'assets/thunderstorm.png';
    }
  }

  MaterialColor gerthemecolor() {
    if (condition == "Cloudy" || condition == 'Partly cloudy') {
      return Colors.grey;
    } else if (condition == 'Sunny' || condition == 'Clear') {
      return Colors.yellow;
    } else if (condition == 'Patchy rain possible' ||
        condition == 'Light rain shower') {
      return Colors.blue;
    } else {
      return Colors.orange;
    }
  }
}
