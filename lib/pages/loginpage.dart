// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/logo1.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: 20), // Spacer at the top

          // Logo centered
          Center(child: Logo1()),

          SizedBox(height: 30), // Spacer between logo and text

          // Text left-aligned
          Container(
            width: double.infinity, // Take full width of the screen
            padding: const EdgeInsets.only(left: 20), // Add left padding
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to the start
                  children: [
                    Text(
                      'Getting Started',
                      style: GoogleFonts.poppins(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Let's Login for Explore Continues.",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Color.fromARGB(255, 94, 103, 164),
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Email or Phone Number',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: TextField(
                        controller: myController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            hintText: "Example@gmail.com",
                            hintStyle: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 154, 154, 154)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: TextField(
                        controller: myController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText:
                                "• • • • • • • • • • • • • • • • • • • • •",
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color.fromARGB(255, 154, 154, 154)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                        obscureText: true,
                      ),
                    ),
                    //forgot password *tambahin href to link
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Forgot Password?",
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 94, 103, 164),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Login button tapped!');
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Loginpage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          width: 400,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(29, 35, 77, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: RichText(
                            text: TextSpan(
                          style: GoogleFonts.poppins(
                            color: Colors.black, // Default text color
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Don't have an Account? ",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "Sign Up Here",
                              style: GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 94, 103, 164),
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                      ),
                    )
                  ]),
            ),
          ),
        ]));
  }
}
