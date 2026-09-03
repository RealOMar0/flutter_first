import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget { // اختصارها هوا Stl
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 14, 14),
      body: Center(
        child: Text(
          "OMarrrrr",
          style: TextStyle(color: Color.fromRGBO(139, 67, 4, 1), fontSize: 50),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}