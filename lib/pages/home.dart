// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentalin/components/navbar.dart';
import 'package:rentalin/pages/Nearbypage.dart';
import 'package:rentalin/pages/messagepage.dart';
import 'package:rentalin/pages/homepage.dart';
import 'package:rentalin/pages/profilepage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  String _username = 'Rentalin'; // Set a default username or update dynamically

  List<Widget> get _pages {
    return [
      Homepage(username: _username), // Use the dynamic username
      const Nearbypage(),
      const Messagepage(),
      const Settingpage(),
    ];
  }

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
