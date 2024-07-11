// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/logo1.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(height: 20), // Spacer at the top

        // Logo centered
        Center(child: Logo1()),

        SizedBox(height: 20), // Spacer between logo and text

        // Text left-aligned
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Getting Started',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
