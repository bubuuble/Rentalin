// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/logo1.dart';
import 'package:rentalin/components/squaretile.dart';
import 'package:rentalin/pages/autenthication.dart';
import 'package:rentalin/pages/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController myEmail = TextEditingController();
  TextEditingController myPassword = TextEditingController();
  bool _isObscure = true; // State variable to toggle password visibility
  final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  final _formKey = GlobalKey<FormState>(); // Form key for validation

  // Validation function for Email
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  // Validation function for Password
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Navigate to next page or perform action if the form is valid
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Autenthication(),
        ),
      );
    }
  }

  @override
  void dispose() {
    // Dispose the TapGestureRecognizer when the widget is disposed
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tapGestureRecognizer.onTap = () {
      print("Sign Up Here Tapped!");
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Signup(),
        ),
      );
    };

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Spacer at the top

              // Logo centered
              Center(child: Logo1()),

              SizedBox(height: 30), // Spacer between logo and text

              // Text left-aligned
              Container(
                width: double.infinity, // Take full width of the screen
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: TextFormField(
                          controller: myEmail,
                          validator: validateEmail,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            hintText: "example@gmail.com",
                            hintStyle: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 154, 154, 154),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
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
                        child: TextFormField(
                          controller: myPassword,
                          validator: validatePassword,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText:
                                "• • • • • • • • • • • • • • • • • • • • •",
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Color.fromARGB(255, 154, 154, 154),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            // Handle forgot password action
                            print('Forgot Password tapped!');
                          },
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 94, 103, 164),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: _submitForm,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
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
                                color: Colors.black,
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
                                  recognizer: _tapGestureRecognizer,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "OR",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SquareTile(imagePath: "lib/icons/google.png"),
                          SizedBox(width: 20),
                          SquareTile(imagePath: "lib/icons/apple_logo.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
