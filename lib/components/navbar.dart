import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;

  MyBottomNavbar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey,
        activeColor: Color.fromRGBO(29, 35, 77, 1),
        tabActiveBorder: Border.all(color: Colors.grey.shade400),
        tabBackgroundColor: Colors.grey.shade100,
        gap: 8,
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w700),
        tabBorderRadius: 17,
        onTabChange: onTabChange, // Pass the callback directly
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.location_on,
            text: "Nearby",
          ),
          GButton(
            icon: Icons.message,
            text: "Chat",
          ),
        ],
      ),
    );
  }
}
