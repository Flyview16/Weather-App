import 'package:flutter/material.dart';
import 'package:weatherly/components/constants.dart';

// Weather parameters
class WeatherParameters extends StatelessWidget {
  final IconData iconData;
  final String value;
  final String label;
  final Color iconColor;

  const WeatherParameters({
    super.key,
    required this.iconData,
    required this.value,
    required this.label,
    this.iconColor = Colors.white,
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
          style: kHourlyTextStyle.copyWith(
              fontSize: MediaQuery.of(context).size.height * 0.021),
        ),
        Text(
          label,
          style: kWeeklyTextStyle.copyWith(
              fontSize: MediaQuery.of(context).size.height * 0.021),
        ),
      ],
    );
  }
}

// Custom App Bar for weekly forecast screen
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.calendar_month),
          Text(
            'Next 7 Days',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
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
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '23°',
                  style: kHourlyTextStyle,
                ),
                Icon(
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
            padding: const EdgeInsets.all(7.5),
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
                const Row(
                  children: [
                    Image(
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
                      style: kHourlyTextStyle.copyWith(
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                    ),
                    Text(
                      '+14°',
                      style: kWeeklyTextStyle.copyWith(
                          fontSize: MediaQuery.of(context).size.height * 0.022),
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

//Custom Clipper path
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 50);
    path.quadraticBezierTo(
      5, // Control point X
      5, // Control point Y
      80, // End point X
      20, // End point Y
    );
    path.lineTo(size.width - 55, size.height - 120);
    path.quadraticBezierTo(
      size.width, // Control point X
      size.height - 112, // Control point Y
      size.width, // End point X
      size.height - 80, // End point Y
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
