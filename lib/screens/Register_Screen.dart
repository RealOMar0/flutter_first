import 'package:flutter/material.dart';
import 'package:flutter_first/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstnametController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController placeholderController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool obscurePassword = true;
  IconData eyeIcon = Icons.remove_red_eye_outlined;
  bool? onchecked = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    firstnametController.dispose();
    lastnameController.dispose();
    placeholderController.dispose();
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
                      children: [
                        Text(
                          "GameVault",
                          style: GoogleFonts.sedanSc(
                            fontSize: 25,
                            fontWeight: const FontWeight(700),
                            color: const Color.fromARGB(255, 28, 28, 30),
                          ),
                        ),
                        const Spacer(flex: 35),
                        Text(
                          "English",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: const FontWeight(500),
                            color: const Color.fromARGB(255, 94, 92, 230),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.language, size: 24),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "I'm new here",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: const FontWeight(620),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    VerveTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty";
                        }
                        if (value.trim().length < 2) {
                          return "Name is too short";
                        }
                        return null;
                      },
                      label: "First Name",
                      controller: firstnametController,
                    ),
                    const SizedBox(height: 16),
                    VerveTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty";
                        }
                        return null;
                      },
                      label: "last Name",
                      controller: lastnameController,
                    ),
                    const SizedBox(height: 16),
                    VerveTextField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty";
                        }
                        return null;
                      },
                      label: "Email Address",
                      controller: emailController,
                    ),
                    const SizedBox(height: 16),
                    VerveTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty";
                        }
                        return null;
                      },
                      label: "Placeholder",
                      controller: placeholderController,
                      suffixIcon: const Icon(Icons.date_range_rounded),
                    ),
                    const SizedBox(height: 16),
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
                    const SizedBox(height: 32),
                    const Divider(color: Color.fromARGB(255, 205, 205, 206)),
                    const SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            activeColor: Colors.black,
                            value: onchecked,
                            onChanged: (value) {
                              setState(() {
                                onchecked = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Yes, keep me informed via email about the latest trends and special offers. (not mandatory)",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: const FontWeight(400),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
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
