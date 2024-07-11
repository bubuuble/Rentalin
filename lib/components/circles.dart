// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class circlesss extends StatelessWidget {
  final Color color1;
  final Color color2;

  const circlesss({
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: color1,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: color2,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ]),
    );
  }
}
