// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/logo1.dart';
import 'package:rentalin/components/squaretile.dart';
import 'package:rentalin/pages/loginpage.dart'; // Import the Loginpage

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController myUsername = TextEditingController();
  TextEditingController myEmail = TextEditingController();
  TextEditingController myPassword = TextEditingController();
  bool agreedToTerms = false;
  bool _isObscure = true; // State variable to toggle password visibility
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();

  // Validation function for Full Name
  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Enter only alphabets for Full Name';
    }
    return null;
  }

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
    if (_formKey.currentState!.validate() && agreedToTerms) {
      // Navigate to next page if the form is valid and terms are agreed
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Loginpage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _tapGestureRecognizer.onTap = () {
      print("Sign Up Here Tapped!");
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => Loginpage()), // Add your Signup page here
      );
    };

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 20), // Spacer at the top

            // Logo centered
            Center(child: Logo1()),

            SizedBox(height: 30), // Spacer between logo and text

            // Text left-aligned
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      controller: myUsername,
                      validator: validateFullName,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Your Name",
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
                    'Email',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
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
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      controller: myPassword,
                      validator: validatePassword,
                      obscureText: _isObscure, // Toggle password visibility
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "• • • • • • • • • • • • • • • • • • • • •",
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
                            color: Colors.grey,
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: agreedToTerms,
                        onChanged: (value) {
                          setState(() {
                            agreedToTerms = value!;
                          });
                        },
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              agreedToTerms = !agreedToTerms;
                            });
                          },
                          child: Text(
                            "I agree to the Terms of Services and Privacy Policy.",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _submitForm,
                    child: Container(
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                        color: agreedToTerms
                            ? Color.fromRGBO(29, 35, 77, 1)
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Already have an Account? ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: "Login Here",
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 94, 103, 164),
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: _tapGestureRecognizer,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text("OR",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                //google button
                SquareTile(imagePath: "lib/icons/google.png"),

                SizedBox(
                  width: 20,
                ),
                SquareTile(imagePath: "lib/icons/apple_logo.png")
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
