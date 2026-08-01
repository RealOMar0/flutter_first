// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TestAnimationsFonts extends StatelessWidget {
  const TestAnimationsFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie.asset(
            //   'assets/animations/Alphabet A.json',
            //   width: 200,
            //   height: 200,
            // ),

             //SizedBox(height: 20),

             Text(
              "ازيك عامل ايه النهارده",
              style: TextStyle(
                fontSize: 40,
                fontFamily: "Cairo",
              ),
            ),
          ],
        ),
      ),
    );
  }
}