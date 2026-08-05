// ignore_for_file: unused_import
import 'package:flutter_first/screens/Register_Screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/screens/Login_Screen.dart';
import 'package:lottie/lottie.dart';
void main() {
  GoogleFonts.config.allowRuntimeFetching = false; 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home:LoginScreen());
  }
}
