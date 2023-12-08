import 'package:flutter/material.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {},
    );
  }
}
