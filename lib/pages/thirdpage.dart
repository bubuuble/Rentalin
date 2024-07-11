// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/circles.dart';
import 'package:rentalin/components/logobar.dart';
import 'package:rentalin/pages/fourthpage.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Fourthpage()),
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
                'lib/images/page3_image.png',
                height: 400,
              ),
            ),
            //text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
              child: Text('Easily choose your own dream motorbike',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),

            const SizedBox(
              width: 20,
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, right: 40, left: 40),
                child: Text(
                    'Hundreds of motorbikes are ready with various choices and extra services just for you',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ),
            ),

            const SizedBox(
              width: 20,
            ),

            //3 circles bar
            Spacer(),
            circlesss(
              color1: Colors.white,
              color2: Colors.grey,
            ),
          ]),
        ),
      ),
    );
  }
}
