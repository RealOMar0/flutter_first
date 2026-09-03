import 'package:flutter/material.dart';
import 'package:flutter_first/screens/aboutscreen.dart';
import 'package:flutter_first/screens/settingscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_first/screens/reset_password_screen.dart';
import 'package:flutter_first/screens/main_screen.dart';
import 'package:flutter_first/screens/favorites_screen.dart';
import 'package:flutter_first/screens/home_screen.dart';
import 'package:flutter_first/screens/register_screen.dart';
import 'package:flutter_first/screens/login_screen.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        chipTheme: ChipThemeData(
          showCheckmark: false,
          selectedColor: Colors.black,
          secondaryLabelStyle: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: const FontWeight(600),
            color: Colors.white,
          ),
          backgroundColor: Colors.white,
          labelStyle: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: const FontWeight(600),
            color: Colors.black,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/main': (context) => const MainScreen(),
        '/home': (context) => const HomeScreen(),
        '/resetpassword': (context) => const SecurityVerificationScreen(),
        '/fav': (context) => const FavoritesScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
