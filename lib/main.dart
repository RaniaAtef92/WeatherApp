import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/pages/Home_Page.dart';
import 'package:weatherapp/pages/Weather_Page.dart';
import 'package:weatherapp/pages/cubits/search_cubit/search_cubit.dart';
import 'package:weatherapp/service/Weather_Searvice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
