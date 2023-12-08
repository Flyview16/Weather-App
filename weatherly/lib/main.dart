import 'package:flutter/material.dart';
import 'package:weatherly/screens/city_management.dart';
import 'package:weatherly/screens/daily_forecast.dart';
import 'package:weatherly/screens/home_screen.dart';
import 'package:weatherly/screens/search_screen.dart';

void main() {
  runApp(const WeatherlyApp());
}

class WeatherlyApp extends StatefulWidget {
  const WeatherlyApp({super.key});

  @override
  State<WeatherlyApp> createState() => _WeatherlyAppState();
}

class _WeatherlyAppState extends State<WeatherlyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        SearchScreen.id: (context) => const SearchScreen(),
        DailyForecast.id: (context) => const DailyForecast(),
        CityManagement.id: (context) => const CityManagement()
      },
      initialRoute: HomeScreen.id,
    );
  }
}
