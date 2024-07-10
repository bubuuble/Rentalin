// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/logobar.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //logo
            Logobar(),

            // const SizedBox(height: 0),

            //image2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Image.asset(
                'lib/images/rentalin_logo_baru.png',
                height: 400,
              ),
            ),
            //text
            Text('Welcome To Rentalin',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),

            const SizedBox(
              width: 20,
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 40, left: 40),
                child: Text(
                    'Applications that make travel more comfortable, ready to help mobility anytime and anywhere',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ),
            ),
            //text
          ],
        ),
      ), //3 circles bar
    );
  }
}
