import 'package:flutter/material.dart';

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
            fontSize: 18,
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
