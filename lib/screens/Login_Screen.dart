// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  IconData eyeIcon = Icons.remove_red_eye_outlined;
  bool checkedBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(         // const make erorr
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Padding(
            padding: EdgeInsetsGeometry.fromLTRB(0, 0, 0, 0),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Verve",
                      style: GoogleFonts.sedanSc(
                        fontSize: 25,
                        color: Color.fromARGB(255, 28, 28, 30),
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Select Contry",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Color(0xFF5E5CE6),
                        fontWeight: FontWeight(500),
                      ),
                    ),
                  ],
                ),
                
                SizedBox(width: double.infinity, height: 10),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome back",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight(620),
                    ),
                  ),
                ),
                
                SizedBox(width: double.infinity, height: 10),

                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 60,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xFFCDCDCE)),

                    color: Color.fromARGB(255, 255, 255, 255),
                  ),

                  child: Text(
                    'Email',
                    style: GoogleFonts.alef(
                      color: Color.fromARGB(170, 205, 205, 206),
                      fontSize: 20,
                      fontWeight: FontWeight(500),
                    ),
                  ),
                ),

                SizedBox(width: double.infinity, height: 20),

                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 60,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xFFCDCDCE)),

                    color: Color.fromARGB(255, 255, 255, 255),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Password',
                        style: GoogleFonts.alef(
                          color: Color.fromARGB(170, 205, 205, 206),
                          fontSize: 20,
                          fontWeight: FontWeight(500),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (eyeIcon == Icons.remove_red_eye_outlined) {
                              eyeIcon = Icons.visibility_off;
                            } else {
                              eyeIcon = Icons.remove_red_eye_outlined;
                            }
                          });
                        },
                        child: Icon(eyeIcon),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(width: double.infinity, height: 18),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20,
                      height:20, // Hena el checkbox bemla elmsa7a klaha f bekon akber (20px mazbot)
                      child: Checkbox(
                        value: checkedBox,
                        onChanged: (value) {
                          setState(() {
                            checkedBox = value!;
                          });
                        },
                        activeColor: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),

                    SizedBox(width: 8), // Zakeeeeeeeeeeeeeeer!!
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Remember Me",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight(400),
                        ),
                      ),
                    ),

                    Spacer(), // Zakeeeeeeeeeeeeeeer!!!!
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Color(0xFF5E5CE6),
                        fontWeight: FontWeight(400),
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: 32),
                
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
                    alignment: Alignment.center,
                    //width: 360,
                    height: 50,

                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 28, 28, 30),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                  ),
                ),
                
                SizedBox(height: 32),
                
                Divider(color: Color(0xFFCDCDCE)),
                
                SizedBox(height: 31),
                
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "New to Verve",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Color.fromARGB(255, 28, 28, 30),
                      fontWeight: FontWeight(600),
                    ),
                  ),
                ),
                
                SizedBox(height: 16),
                
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
                    alignment: Alignment.center,
                    height: 50,

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 28, 28, 30),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Color.fromARGB(255, 28, 28, 30),
                        fontSize: 16,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
