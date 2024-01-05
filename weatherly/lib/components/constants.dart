import 'package:flutter/material.dart';

const kHourlyTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
);

const kWeeklyTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 20,
);

var kBackButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
);

const kTextfieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white70,
  hintText: 'Enter city name',
  contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide(color: Colors.white, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide(
      color: Color(0xff122437),
      width: 2.0,
    ),
  ),
);
