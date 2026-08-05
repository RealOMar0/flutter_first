import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Verve",
                    style: GoogleFonts.sedanSc(
                      fontSize: 25,
                      fontWeight: FontWeight(700),
                      color: Color.fromARGB(255, 28, 28, 30),
                    ),
                  ),
                  Spacer(flex: 35),
                  Spacer(),
                  Icon(Icons.search, size: 28),
                  Spacer(),
                  Icon(Icons.shopping_bag, size: 25),
                ],
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black,
                      ),
                      child: Text(
                        "All",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "Deals",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "Clothes",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "Shoes",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "Accessory",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Container(width: 393, height: 217, 
              child: Image.asset('assets/images/Screenshot 2026-08-05 025959.png')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
