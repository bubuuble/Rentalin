// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentalin/pages/secondpage.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Secondpage()),
        );
      },
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: 250,
            width: 250,
            child: Container(
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
