import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/moduls/bike.dart';

class Nearbytile extends StatelessWidget {
  final Bike bike;

  Nearbytile({super.key, required this.bike});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 10),
      width: 400, // Adjust the width of the tile
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Bike image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              bike.imagePath,
              width: 200, // Adjust width as needed
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15), // Space between image and text
          // Text and button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    bike.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    bike.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Rp ${bike.price}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8), // Space above the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Define the button action here
                    },
                    child: Text(
                      'Rent this Bike',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromRGBO(29, 35, 77, 1), // Background color
                      foregroundColor: Colors.white, // Text color
                      minimumSize: Size(150, 40), // Set button size
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
