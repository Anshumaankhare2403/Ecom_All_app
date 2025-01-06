import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final List<String> image = [
    "assets/images/l3.png",
    "assets/images/l2.png",
    "assets/images/l1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome\nBack!",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 20),
                // Username TextField with Shadow
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 4),
                    )
                  ]),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FaIcon(
                          FontAwesomeIcons.solidUser,
                          color: Color(0xFF626262),
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
                          fontSize: 18,
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
                SizedBox(height: 25),
                // Password TextField with Shadow
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 4),
                    )
                  ]),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FaIcon(
                          FontAwesomeIcons.lock,
                          color: Color(0xFF626262),
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
                          fontSize: 18,
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
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Color(0xFFF83758),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 50),
                // Login Button
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF83758),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                // Image List
                SizedBox(
                  height: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center the ListView horizontally
                    children: [
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis
                              .horizontal, // Set scroll direction to horizontal
                          itemCount: image.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3.0),
                              child: Center(
                                child: Container(
                                  width:
                                      65, // Adjust the width for larger images
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        40), // Half of width/height
                                    border: Border.all(
                                        color: Color(0xffF83758), width: 3),
                                    image: DecorationImage(
                                      image: AssetImage(image[index]),
                                      fit: BoxFit
                                          .none, // Ensures the image fits well
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
