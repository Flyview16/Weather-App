import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weatherly/components/widgets.dart';

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
        child: SingleChildScrollView(
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
              Container(
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
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 38.0),
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
                                onPressed: () {},
                                child: const Text(
                                  'Atlanta',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
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
                      const Image(
                        width: 240,
                        height: 240,
                        image: AssetImage('images/cloud1.png'),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '21',
                            style: TextStyle(
                              fontSize: 135,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Thunderstorm',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Monday,17 May',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
