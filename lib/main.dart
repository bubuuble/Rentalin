// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentalin/pages/firstpage.dart'; // Import your custom page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rentalin',
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color.fromRGBO(29, 35, 77, 1), // Set theme here
      ),
      home: const Firstpage(), // Use the imported custom page as home
    );
  }
}
