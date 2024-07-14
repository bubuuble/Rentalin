import 'package:flutter/material.dart';

class Logo1 extends StatelessWidget {
  const Logo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 20),
          child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(29, 35, 77, 1),
                  borderRadius: BorderRadius.circular(50)),
              child: Image.asset('lib/images/rentalin_logo_baru_03.png')),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Image.asset(
            'lib/images/tulisan_rentalin_01.png',
            width: 100,
          ),
        ),
      ],
    );
  }
}
