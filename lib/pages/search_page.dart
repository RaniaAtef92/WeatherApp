import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/pages/Weather_Page.dart';
import 'package:weatherapp/pages/cubits/search_cubit/search_cubit.dart';
import 'package:weatherapp/service/Weather_Searvice.dart';
import 'package:weatherapp/OOP/Custom_text_faild.dart';

class SearchPage extends StatelessWidget {
  String? cityname;
  WeatherModel? weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        title: Text(
          'Search a City',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.teal,
      ),
      body: custom_Text_Feild(
        labeltext: 'Search',
        hinttext: 'Entre City Name',
        onsub: (data) async {
          cityname = data;
          WeatherSearvice searvice = WeatherSearvice();

          WeatherModel? weather = await searvice.getweather(CityName: cityname);
          print(weather);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => WeatherPage(weatherpage: weather))));
        },
      ),
    );
  }
}
