import 'package:flutter/material.dart';
import 'package:weatherly/components/constants.dart';
import 'package:weatherly/components/widgets.dart';

class DailyForecast extends StatefulWidget {
  static const String id = 'dailyforecast';

  const DailyForecast({super.key});

  @override
  State<DailyForecast> createState() => _DailyForecastState();
}

class _DailyForecastState extends State<DailyForecast> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff151d2a),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.318,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color(0xff122437),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                            width: MediaQuery.of(context).size.width * 0.37,
                            height: MediaQuery.of(context).size.height * 0.17,
                            image: const AssetImage('images/rainy.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tomorrow',
                                style: kHourlyTextStyle.copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.048),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '20',
                                    style: kHourlyTextStyle.copyWith(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.075,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '/17°',
                                    style: kWeeklyTextStyle.copyWith(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.0425,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Rainy - Cloudy',
                                style: kWeeklyTextStyle.copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.043),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.01,
                        child: const Divider(
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
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Expanded(
                child: WeeklyForecast(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
