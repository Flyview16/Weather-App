import 'package:flutter/material.dart';

// Weather parameters
class WeatherParameters extends StatelessWidget {
  final IconData iconData;
  final String value;
  final String label;
  final Color iconColor;
  final Color textColor;
  final Color labelColor;

  const WeatherParameters({
    super.key,
    required this.iconData,
    required this.value,
    required this.label,
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    this.labelColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          color: iconColor,
        ),
        Text(
          value,
          style: TextStyle(
            color: textColor,
            fontSize: 17,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

// Listview for hourly data
class HourlyListView extends StatelessWidget {
  const HourlyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 90,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '23°',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.cloud,
                  color: Colors.white,
                ),
                Text(
                  '10:00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// Listview for weekly forecast
List week = [
  'Saturday',
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday'
];

class WeeklyForecast extends StatelessWidget {
  const WeeklyForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: week.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            height: 90,
            decoration: const BoxDecoration(
              color: Color(0xff2b406d),
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Saturday',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    Text('October 21'),
                  ],
                ),
                Row(
                  children: [
                    Image(
                      width: 40,
                      height: 40,
                      image: AssetImage('images/cloud1.png'),
                    ),
                    Text(
                      'Cloudy',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '+20',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '+14',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
