import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  IconData eyeIcon = Icons.remove_red_eye_outlined;
  bool? onchecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: GestureDetector(
            behavior: HitTestBehavior.opaque, // dy bt8ra ay 9'gh6h 3la alshashh wbt7mlha unfocus
            onTap:(){
                  FocusScope.of(context).unfocus(); // bet3mal unfocus 3la el text field 
            },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView( // 
              child: Column(
                children: [
                  Row(
                    // kont momken a3mel row gwa row
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
                      Text(
                        "English",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight(500),
                          color: Color.fromARGB(255, 94, 92, 230),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.language, size: 24),
                    ],
                  ),
                  SizedBox(height: 32),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "I’m new here",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight(620),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFCDCDCE)),
                      color: Colors.white,
                    ),
                    child: TextField(
                      cursorHeight: 20,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: "First Name",
                        hintStyle: GoogleFonts.alef(
                          color: const Color.fromARGB(170, 205, 205, 206),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                      
                  const SizedBox(height: 16),
                      
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFCDCDCE)),
                      color: Colors.white,
                    ),
                    child: TextField(
                      cursorHeight: 20,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: "Last Name",
                        hintStyle: GoogleFonts.alef(
                          color: const Color.fromARGB(170, 205, 205, 206),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                      
                  const SizedBox(height: 16),
                      
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFCDCDCE)),
                      color: Colors.white,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorHeight: 20,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: "Email address",
                        hintStyle: GoogleFonts.alef(
                          color: const Color.fromARGB(170, 205, 205, 206),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                      
                  const SizedBox(height: 16),
                      
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFCDCDCE)),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorHeight: 20,
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: "Placeholder",
                              hintStyle: GoogleFonts.alef(
                                color: const Color.fromARGB(170, 205, 205, 206),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const Icon(Icons.date_range_rounded),
                      ],
                    ),
                  ),
                      
                  const SizedBox(height: 16),
                      
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFCDCDCE)),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorHeight: 20,
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: GoogleFonts.alef(
                                color: const Color.fromARGB(170, 205, 205, 206),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
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
                  SizedBox(height: 32),
                  Divider(color: Color.fromARGB(255, 205, 205, 206)),
                  SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // di bt7azy el check box w t5leh dayman fo2 7ta law el text expaneded
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          activeColor: Colors.black,
                          value: onchecked,
                          /* the widget calls the onChanged callback , and then the value <bool> rather it was a T or F
                          the onChaned return the opp to value  when the user tap on the boxand then the setstate recall flutter to rebluid the W
                          */
                          onChanged: (value) {
                            setState(() {
                              onchecked = value!;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Yes, keep me informed via email about the latest trends and special offers. (not mandatory)",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight(400),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                    SizedBox( height: 260,)                      
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





/*

SizedBox(
                width: 360,
                height: 56,
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "Yes, keep me informed via email about the latest trends and special offers m gfgdgfgfdggdfg",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12,
                      fontWeight: FontWeight(500),
                    ),
                  ),
                  activeColor: Colors.black,
                  value: onchecked,
                  /* the widget calls the onChanged callback , and then the value <bool> rather it was a T or F
                      the onChaned return the opp to value  when the user tap on the boxand then the setstate recall flutter to rebluid the W
                      */
                  onChanged: (value) {
                    setState(() {
                      onchecked = value!;
                    });
                  },
                ),
              ),

              //)
              */