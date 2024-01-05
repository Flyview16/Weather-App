import 'package:flutter/material.dart';
import 'package:weatherly/components/constants.dart';
import 'package:weatherly/components/widgets.dart';
import 'package:weatherly/screens/search_screen.dart';

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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              selectedFontSize: MediaQuery.of(context).size.width * 0.04,
              unselectedFontSize: MediaQuery.of(context).size.width * 0.04,
              selectedItemColor: Colors.white70,
              unselectedItemColor: Colors.white70,
              items: [
                BottomNavigationBarItem(
                  label: 'Edit',
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blueGrey,
                      size: MediaQuery.of(context).size.width * 0.095,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Add',
                  icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SearchScreen.id);
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.blueGrey,
                      size: MediaQuery.of(context).size.width * 0.095,
                    ),
                  ),
                ),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Container(
                        height: 190,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff2b406d),
                              Colors.deepPurple,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 18.0,
                            top: 18.0,
                            bottom: 8.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '23°',
                                style:
                                    kHourlyTextStyle.copyWith(fontSize: 50.0),
                              ),
                              Text(
                                'H:26°  L:16°',
                                style: kWeeklyTextStyle.copyWith(fontSize: 18),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tokyo, Japan',
                                    style: kHourlyTextStyle,
                                  ),
                                  Text(
                                    'ThunderStorm',
                                    style: kHourlyTextStyle,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: Image(
                      height: 160,
                      width: 160,
                      image: AssetImage('images/rainy.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
