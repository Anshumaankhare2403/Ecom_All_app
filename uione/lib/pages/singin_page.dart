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
                SizedBox(height: 30),
                // Password TextField with Shadow
                Container(
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
                SizedBox(height: 30),
                // Password TextField with Shadow
                Container(
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
                      hintText: 'ConfirmPassword',
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
                    "By clicking the Register button, you agree to the public offer",
                    style: TextStyle(
                        color: Color(0xFF676767),
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

                Column(
                  children: [
                    Text("- OR Continue with -",
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w500)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            width: 70, // Adjust the width for larger images
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  40), // Half of width/height
                              border: Border.all(
                                  color: Color(0xffF83758), width: 3),
                              image: DecorationImage(
                                image: AssetImage(image[0]),
                                fit: BoxFit.none, // Ensures the image fits well
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            width: 70, // Adjust the width for larger images
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  40), // Half of width/height
                              border: Border.all(
                                  color: Color(0xffF83758), width: 3),
                              image: DecorationImage(
                                image: AssetImage(image[1]),
                                fit: BoxFit.none, // Ensures the image fits well
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            width: 70, // Adjust the width for larger images
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  40), // Half of width/height
                              border: Border.all(
                                  color: Color(0xffF83758), width: 3),
                              image: DecorationImage(
                                image: AssetImage(image[2]),
                                fit: BoxFit.none, // Ensures the image fits well
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I Already Have an Account",
                            style: TextStyle(
                              fontSize: 19,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          width: 10,
                        ),
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
                              fontSize: 19,
                              color: Color(0xFFF83758),
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration
                                  .underline, // Adds underline to the text
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
