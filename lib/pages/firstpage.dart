// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentalin/pages/secondpage.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Secondpage(),
              )),
          child: SizedBox(
            height: 400,
            width: 400,
            child: Container(
              // child: Image.asset('lib/images/rentalin_logo_baru_01.png',
              // height: 240,
              // ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/rentalin_logo_baru_01.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
