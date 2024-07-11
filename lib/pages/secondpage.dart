// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/logobar.dart';
import 'package:rentalin/pages/thirdpage.dart';
import 'package:rentalin/components/circles.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Thirdpage()),
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(children: [
            //logo
            Logobar(),

            //image2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Image.asset(
                'lib/images/dummy_images.jpg',
                height: 400,
              ),
            ),
            //text
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 110, vertical: 40),
              child: Text('Welcome To Rentalin',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),

            const SizedBox(
              width: 20,
            ),

            Center(
              child: Text(
                  'Applications that make travel more comfortable, ready to help mobility anytime and anywhere',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal)),
            ),

            const SizedBox(
              width: 20,
            ),

            //3 circles bar
            Spacer(),
            circlesss(
              color1: Colors.grey,
              color2: Colors.white,
            ),
          ]),
        ),
      ),
    );
  }
}
