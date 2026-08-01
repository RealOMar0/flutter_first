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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
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
                padding: EdgeInsets.all(15),

                height: 60,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color.fromARGB(255, 205, 205, 206)),

                  color: Color.fromARGB(255, 255, 255, 255),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'First Name',
                      style: GoogleFonts.alef(
                        color: Color.fromARGB(170, 205, 205, 206),
                        fontSize: 20,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(15),

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
                      'Last Name',
                      style: GoogleFonts.alef(
                        color: Color.fromARGB(170, 205, 205, 206),
                        fontSize: 20,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(15),

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
                      'Email address',
                      style: GoogleFonts.alef(
                        color: Color.fromARGB(170, 205, 205, 206),
                        fontSize: 20,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(15),

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
                      'Placeholder',
                      style: GoogleFonts.alef(
                        color: Color.fromARGB(170, 205, 205, 206),
                        fontSize: 20,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                    Icon(Icons.date_range_rounded),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(15),

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
                      value: onchecked , 
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
                SizedBox(width: 8,),
                Expanded(
                  child: Text("Yes, keep me informed via email about the latest trends and special offers. (not mandatory)",
                            style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight(400),)),
                )

                

                ],
              ),
            ],
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