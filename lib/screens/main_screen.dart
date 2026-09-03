import 'package:flutter/material.dart';
import 'package:flutter_first/screens/cart_screen.dart';
import 'package:flutter_first/screens/electronics_screen.dart';
import 'package:flutter_first/screens/favorites_screen.dart';
import 'package:flutter_first/screens/home_screen.dart';
import 'package:flutter_first/screens/profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final screens = const [
    HomeScreen(), // 0
    ElectronicsScreen(), // 1
    FavoritesScreen(), // 2
    CartScreen(), // 3
    ProfileScreen(), // 4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: Text(
          "GameVault",
          style: GoogleFonts.sedanSc(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1C1C1E),
          ),
        ),

        actionsPadding: const EdgeInsets.symmetric(horizontal: 20),

        actions: const [
          Icon(Icons.electric_bolt_rounded, size: 26, color: Color(0xFF1C1C1E)),

          SizedBox(width: 12),

          Icon(Icons.shopping_cart_outlined, size: 25, color: Color(0xFF1C1C1E)),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.electric_bolt_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
      ),
    );
  }
}
