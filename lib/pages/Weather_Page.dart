import 'package:flutter/material.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key, this.weatherpage}) : super(key: key);
  // final LocationModle?location;
  final WeatherModel? weatherpage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: weatherpage!.gerthemecolor(),
        foregroundColor: Colors.black,
        title: Text(
          'Weather',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          weatherpage!.gerthemecolor(),
          Colors.teal,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherpage!.name,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 15),
            Text(
              weatherpage!.date,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(weatherpage!.geticon()),
                
                Text(
                  '${weatherpage!.temp.toInt()}',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'mintemp:${weatherpage!.minTemp.toInt()}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'maxtemp:${weatherpage!.maxTemp.toInt()}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              weatherpage!.condition,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            // SizedBox(
            // height: 100,
            //width: 100,
            //child: GoogleMap(
            //  initialCameraPosition: CameraPosition(
            //    target: LatLng(weatherpage!.lat.toDouble(),
            //      weatherpage!.lon.toDouble()),
            //zoom: 20)),
            //),
          ],
        ),
      ),
    );
  }
}
