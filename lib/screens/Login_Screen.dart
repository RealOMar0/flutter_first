import 'package:flutter/material.dart';
import 'package:flutter_first/widgets/text_field.dart';
import 'package:flutter_first/screens/home_screen.dart';
import 'package:flutter_first/screens/register_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  IconData eyeIcon = Icons.remove_red_eye_outlined;
  bool obscurePassword = true;
  bool checkedBox = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "GameVault",
                          style: GoogleFonts.sedanSc(
                            fontSize: 25,
                            color: const Color.fromARGB(255, 28, 28, 30),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Select Contry",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xFF5E5CE6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: double.infinity, height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome back",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: double.infinity, height: 10),
                    VerveTextField(
                      label: "Email Address",
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.search,
                    ),
                    const SizedBox(width: double.infinity, height: 20),
                    VerveTextField(
                      controller: passwordController,
                      label: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      obscureText: obscurePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your password";
                        }
                        if (value.length < 8) {
                          return "Min 8 characters";
                        }
                        return null;
                      },
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        child: Icon(
                          obscurePassword
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    const SizedBox(width: double.infinity, height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            value: checkedBox,
                            onChanged: (value) {
                              setState(() {
                                checkedBox = value!;
                              });
                            },
                            activeColor: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Remember Me",
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/resetpassword");
                          },
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color(0xFF5E5CE6),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacementNamed(context, '/main');
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 28, 28, 30),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Divider(color: Color(0xFFCDCDCE)),
                    const SizedBox(height: 31),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "New to GameVault",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 28, 28, 30),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 28, 28, 30),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              color: Color.fromARGB(255, 28, 28, 30),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
