import 'package:flutter/material.dart';

class CityManagement extends StatefulWidget {
  static const String id = 'citymanagement';
  const CityManagement({super.key});

  @override
  State<CityManagement> createState() => _CityManagementState();
}

class _CityManagementState extends State<CityManagement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff151d2a),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(
            'City Manager',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
