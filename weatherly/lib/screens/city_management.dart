import 'package:flutter/material.dart';
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
              currentIndex: 0,
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
                        child: const Padding(
                          padding: EdgeInsets.only(
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
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0,
                                ),
                              ),
                              Text(
                                'H:26°  L:16°',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tokyo, Japan',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Text(
                                    'Showers',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
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

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 50);
    path.quadraticBezierTo(
      5,
      5,
      80,
      20,
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
