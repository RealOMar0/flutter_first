import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(width:50, height:50, color: Colors.red),
    Container(width:50, height:50, color: Colors.green),
    Container(width:50 ,height:50, color: Colors.blue),
  ],
)
    );
  }
}
