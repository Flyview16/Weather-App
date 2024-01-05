import 'package:flutter/material.dart';
import 'package:weatherly/components/constants.dart';

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
            height: MediaQuery.of(context).size.width * 0.19,
            width: MediaQuery.of(context).size.width * 0.19,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '23°',
                  style: kHourlyTextStyle,
                ),
                const Icon(
                  Icons.cloud_outlined,
                  color: Colors.white,
                ),
                Text(
                  '10:00',
                  style: kHourlyTextStyle,
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
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(
              color: Color(0xff2b406d),
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${week[index]}',
                  style: kWeeklyTextStyle,
                ),
                Row(
                  children: [
                    const Image(
                      width: 40,
                      height: 40,
                      image: AssetImage('images/cloud1.png'),
                    ),
                    Text(
                      'Cloudy',
                      style: kWeeklyTextStyle,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '+20°',
                      style: kHourlyTextStyle.copyWith(fontSize: 23),
                    ),
                    Text(
                      '+14°',
                      style: kWeeklyTextStyle.copyWith(fontSize: 19),
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
