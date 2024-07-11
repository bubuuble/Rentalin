// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Logo1 extends StatelessWidget {
  const Logo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(29, 35, 77, 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Image.asset('lib/images/rentalin_logo_baru_03.png')),
          ),
          // Text(
          //   'TEST',
          //   style: GoogleFonts.poppins(fontSize: 40),
          // )
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Image.asset(
              'lib/images/tulisan_rentalin_01.png',
              width: 200,
            ),
          ),
        ]),
      ),
    );
  }
}
