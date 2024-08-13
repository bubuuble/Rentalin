import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/moduls/nearby_list.dart';

class Nearbytile extends StatelessWidget {
  final Nearby nearby;

  Nearbytile({super.key, required this.nearby});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 10),
      width: 400, // Adjust the width of the tile
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
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
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                nearby.imagePath,
                width: 180, // Adjust width as needed
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(width: 15), // Space between image and text
          // Text and button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      nearby.rentName,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.location_on, // Replace with your desired icon
                      color: Colors.black54, // Adjust the color as needed
                      size: 20, // Adjust the size as needed
                    ),
                    SizedBox(
                        width:
                            4), // Add some space between the icon and the text
                    Text(
                      nearby.distance,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  nearby.bikeName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  nearby.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Rp ${nearby.price}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5), // Space above the button
                ElevatedButton(
                  onPressed: () {
                    // Define the button action here
                  },
                  child: Text(
                    'Rent this Bike',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromRGBO(29, 35, 77, 1), // Background color
                    foregroundColor: Colors.white, // Text color
                    minimumSize: Size(150, 40), // Set button size
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
