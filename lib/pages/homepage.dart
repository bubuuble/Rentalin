// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width:
                  MediaQuery.of(context).size.width, // Adjust width dynamically
              height: 100,
              color: Color.fromRGBO(29, 35, 77, 1), // Background color

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                    ),
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                width: MediaQuery.of(context)
                    .size
                    .width, // Adjust width dynamically
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(29, 35, 77, 1), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 2,
                  ),
                ),
                // Border width
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Distribute space between the children
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "Saldo",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Text(
                              "Rp. 20.000",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                          onPressed: () {
                            // Define the button's action here
                          },
                          child: const Text("Top Up"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Button color
                            foregroundColor: Colors.white, // Text color
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hi User..",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
