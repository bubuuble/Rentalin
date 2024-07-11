// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/components/logobar.dart';
import 'package:rentalin/pages/loginpage.dart';

class Fourthpage extends StatelessWidget {
  const Fourthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          //logo
          Logobar(),

          //image2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Image.asset(
              'lib/images/page4_image.png',
              height: 400,
            ),
          ),
          //text
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
            child: Text('Let’s Choose Your Motorcycle',
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
              padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
              child: Text('Travel around the world with just a tap, and enjoy!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal)),
            ),
          ),

          //login button
          GestureDetector(
            onTap: () {
              print('Login button tapped!');
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Loginpage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
