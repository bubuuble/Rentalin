// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentalin/components/navbar.dart';
import 'package:rentalin/pages/Nearbypage.dart';
import 'package:rentalin/pages/messagepage.dart';
import 'package:rentalin/pages/profilepage.dart';
import 'package:rentalin/pages/homepage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    //home
    const Homepage(),
    //nearby
    const Nearbypage(),
    //chat
    const Messagepage(),
  ];

  void navigateBottomBar(int index) {
    // Implement your navigation logic here
    setState(() {
      _selectedIndex = index;
    });
    // For example, updating the state to navigate to different pages
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
