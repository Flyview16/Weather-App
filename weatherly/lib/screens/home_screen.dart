import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weatherly/components/widgets.dart';
import 'package:weatherly/screens/city_management.dart';
import 'package:weatherly/screens/daily_forecast.dart';
import 'package:weatherly/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homescreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(),
            ),
            //child
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.withOpacity(0.5),
                        Colors.black.withOpacity(0.8),
                      ]),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 38.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.grid_view,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, SearchScreen.id);
                                },
                                child: const Text(
                                  'Atlanta',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, CityManagement.id);
                            },
                            child: const Icon(
                              Icons.location_city_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 3.5,
                            backgroundColor: Colors.deepOrange,
                          ),
                          Text(
                            ' Updating',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Image(
                        width: MediaQuery.of(context).size.width * 0.53,
                        height: MediaQuery.of(context).size.width * 0.53,
                        image: const AssetImage('images/cloud1.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '21',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.33,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Thunderstorm',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.088,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Monday,17 May',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.048,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                        width: double.infinity,
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WeatherParameters(
                              iconData: Icons.air,
                              value: '13km/h',
                              label: 'Wind',
                            ),
                            WeatherParameters(
                              iconData: Icons.water_drop,
                              value: '24%',
                              label: 'Humidity',
                              iconColor: Colors.blue,
                            ),
                            WeatherParameters(
                                iconData: Icons.thunderstorm,
                                value: '87%',
                                label: 'Chance of rain'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, DailyForecast.id);
                                },
                                child: const Text(
                                  '7 days',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 130,
                        child: HourlyListView(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
