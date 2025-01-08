import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotpasswordPage extends StatefulWidget {
  const ForgotpasswordPage({super.key});

  @override
  State<ForgotpasswordPage> createState() => _ForgotpasswordPageState();
}

class _ForgotpasswordPageState extends State<ForgotpasswordPage> {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.06), // Dynamic padding
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot\npassword?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.12, // Dynamic font size
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04), // Dynamic spacing
                // Username TextField
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: FaIcon(
                          FontAwesomeIcons.solidEnvelope,
                          color: Color(0xFF626262),
                          size: screenWidth * 0.06, // Dynamic icon size
                        ),
                      ),
                      fillColor: Color(0xFFF3F3F3),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xFFF83758),
                        ),
                      ),
                      hintText: 'Username or Email',
                      hintStyle: TextStyle(
                          fontSize: screenWidth * 0.045, // Dynamic font size
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFA8A8A9),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                // Instruction Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "* We will send you a message to set or reset your new password",
                    style: TextStyle(
                        color: Color(0xFFF83758),
                        fontSize: screenWidth * 0.04, // Dynamic font size
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: screenHeight * 0.06),
                // Submit Button
                Container(
                  height: screenHeight * 0.08, // Dynamic height
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF83758),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: screenWidth * 0.055, // Dynamic font size
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
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
