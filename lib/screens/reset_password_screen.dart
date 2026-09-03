import 'package:flutter/material.dart';
import 'package:flutter_first/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityVerificationScreen extends StatefulWidget {
  const SecurityVerificationScreen({super.key});

  @override
  State<SecurityVerificationScreen> createState() =>
      _SecurityVerificationScreenState();
}

class _SecurityVerificationScreenState
    extends State<SecurityVerificationScreen> {
  final TextEditingController codeController = TextEditingController();
  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GameVault',
                      style: GoogleFonts.sedanSc(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1C1C1E),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Belgium',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF5E5CE6),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.language_rounded,
                          size: 19,
                          color: Color(0xFF1C1C1E),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 31),
                Text(
                  'Security Verification',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1C1C1E),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Codyt@raty@ranger.com',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF1C1C1E),
                  ),
                ),
                const SizedBox(height: 14),
                VerveTextField(
                  controller: codeController,
                  label: "Email Verification Code",
                  keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field can not be empty";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.search,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFF1C1C1E),
                        width: 0.8,
                      ),
                      shape: const StadiumBorder(),
                    ),
                    child: Text(
                      'Send Code',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1C1C1E),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: double.infinity,
                  height: 39,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      disabledBackgroundColor: const Color(0xFFE9E9EE),
                      disabledForegroundColor: const Color(0xFFF8F8FA),
                      shape: const StadiumBorder(),
                    ),
                    child: Text(
                      'Next',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      'Terms of use & Privacy Policy',
                      style: GoogleFonts.inter(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF5E5CE6),
                        decoration: TextDecoration.underline,
                        decorationColor: const Color(0xFF5E5CE6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
