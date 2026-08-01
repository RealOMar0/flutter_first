// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen_test extends StatefulWidget {
  const LoginScreen_test({super.key});

  @override
  State<LoginScreen_test> createState() => _LoginScreen_test();
}

class _LoginScreen_test extends State<LoginScreen_test> {
  String press =
      "Press Here"; // state : here data will change by the fn i did , rather it Double,Single Tap
  Color? colorState = Colors.white;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 10, 192),
      body: GestureDetector(
        onDoubleTap: () {
          setState(() {
            /*Flutter here call build ,then build from bottom to top, then updates the value at the end and rebuilds.
            I can do it with color etc.....
            */
            press = "Double tap";
            colorState = Colors.black;
          });
        },
        onTap: () {
          setState(() {
            press = "Single tap";
            colorState = Colors.blue;
          });
        },
        onLongPress: () {
          setState(() {
            press = "Long press";
            colorState = Colors.amber;
          });
        },
        child: Center(
          child: Text(press, style: TextStyle(color: colorState, fontSize: 50)),
        ),
      ),
    );
  }
}



