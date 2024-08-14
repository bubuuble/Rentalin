import 'package:flutter/material.dart';
import 'package:rentalin/moduls/bike.dart';

class BikeTile extends StatelessWidget {
  final Bike bike;

  const BikeTile({super.key, required this.bike});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 10),
      width: 240, // Width of the tile
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: const Color.fromRGBO(29, 35, 77, 1),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          // Bike image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              bike.imagePath,
              width: 240, // Ensure the image matches the container width
              height: 200, // Adjust height to reduce overflow
              fit: BoxFit.cover, // Make sure the image covers the entire area
            ),
          ),
          const SizedBox(height: 20), // Reduce space between the image and text

          //name
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8), // Reduce horizontal padding
            child: Text(
              bike.name,
              style: const TextStyle(
                fontSize: 20, // Reduce font size if necessary
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8), // Reduce horizontal padding
            child: Text(
              bike.description,
              style: const TextStyle(
                fontSize: 14, // Reduce font size if necessary
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Reduce space between the description and price

          // Price and Details
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8), // Reduce horizontal padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp ${bike.price}',
                  style: const TextStyle(
                    fontSize: 16, // Reduce font size if necessary
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Define the button action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 6), // Adjust button padding
                  ),
                  child: const Text('Rent this Bike'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8), // Space below the button
        ],
      ),
    );
  }
}
