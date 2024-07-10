import 'package:flutter/material.dart';

class Logobar extends StatelessWidget {
  const Logobar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        //logo
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 75, left: 75),
          child: Image.asset(
            'lib/images/rentalin_logo_baru_02.png',
            height: 200,
          ),
        )
      ]),
    );
  }
}
