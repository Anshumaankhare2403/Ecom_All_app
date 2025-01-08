import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './log_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final List<String> image = [
    "assets/images/l3.png",
    "assets/images/l2.png",
    "assets/images/l1.png",
  ];
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
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
                  "Create an\naccount",
                  style: TextStyle(
                    fontSize: screenWidth * 0.12, // Dynamic font size
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                // Username TextField
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      child: FaIcon(
                        FontAwesomeIcons.solidUser,
                        color: Color(0xFF626262),
                        size: screenWidth * 0.06,
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
                        fontSize: screenWidth * 0.045,
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
                SizedBox(height: screenHeight * 0.03),
                // Password TextField
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      child: FaIcon(
                        FontAwesomeIcons.lock,
                        color: Color(0xFF626262),
                        size: screenWidth * 0.06,
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
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: screenWidth * 0.045,
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
                SizedBox(height: screenHeight * 0.03),
                // Confirm Password TextField
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      child: FaIcon(
                        FontAwesomeIcons.lock,
                        color: Color(0xFF626262),
                        size: screenWidth * 0.06,
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
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        fontSize: screenWidth * 0.045,
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
                SizedBox(height: screenHeight * 0.02),
                // Public Offer Text
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "By clicking the Register button, you agree to the public offer",
                    style: TextStyle(
                        color: Color(0xFF676767),
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: screenHeight * 0.06),
                // Login Button
                Container(
                  height: screenHeight * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF83758),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: screenWidth * 0.055,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.06),
                Column(
                  children: [
                    Text(
                      "- OR Continue with -",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: image
                          .map((img) => Padding(
                                padding: EdgeInsets.all(screenWidth * 0.02),
                                child: Container(
                                  height: screenWidth * 0.18,
                                  width: screenWidth * 0.18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        screenWidth * 0.09),
                                    border: Border.all(
                                        color: Color(0xffF83758), width: 3),
                                    image: DecorationImage(
                                      image: AssetImage(img),
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "I Already Have an Account",
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              color: Color(0xFFF83758),
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
