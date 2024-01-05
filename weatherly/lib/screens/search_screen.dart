import 'package:flutter/material.dart';
import 'package:weatherly/components/constants.dart';

class SearchScreen extends StatefulWidget {
  static const String id = 'searchscreen';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff151d2a),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 23),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 45,
                      height: 47,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: kBackButtonStyle,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 7.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: TextField(
                          decoration: kTextfieldDecoration.copyWith(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 30.0,
                          ),
                          color: Colors.blueGrey,
                        ),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
