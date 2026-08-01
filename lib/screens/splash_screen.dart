import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  // اختصارها هوا Stl
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 10, 192),
      body: Center(
        child: Text(
          "OMarrrrr",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 50),
        ),
      ),
      drawer: Drawer(),
    
    
    );
  }
}
