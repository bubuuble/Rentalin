// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Messagepage extends StatelessWidget {
  const Messagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Chat",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.grey,
              width: 0.5,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Quick Actions",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    padding: EdgeInsets.all(5), // Adds space inside the border
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(29, 35, 77, 1),
                      shape: BoxShape.circle, // Makes the border circular
                    ),
                    child: Icon(
                      Icons.message_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
                    child: Text(
                      "Inbox",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      padding:
                          EdgeInsets.all(5), // Adds space inside the border
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(29, 35, 77, 1),
                        shape: BoxShape.circle, // Makes the border circular
                      ),
                      child: Icon(
                        Icons.live_help_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 20),
                      child: Text(
                        "Help Tickets",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: Text(
                  "Your Chats",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 10, top: 10),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "lib/images/dummy_images.jpg",
                          height: 100,
                          width: 100, // Adjust this value as needed
                          fit: BoxFit
                              .cover, // To cover the entire area of the image box
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Name"),
                                Padding(
                                  padding: EdgeInsets.only(left: 180),
                                  child: Text("Date"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Message Display"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 120),
                                  child: Text(
                                    "23",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        backgroundColor: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 10, top: 10),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "lib/images/dummy_images.jpg",
                          height: 100,
                          width: 100, // Adjust this value as needed
                          fit: BoxFit
                              .cover, // To cover the entire area of the image box
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Name"),
                                Padding(
                                  padding: EdgeInsets.only(left: 180),
                                  child: Text("Date"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Message Display"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 120),
                                  child: Text(
                                    "23",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        backgroundColor: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 10, top: 10),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "lib/images/dummy_images.jpg",
                          height: 100,
                          width: 100, // Adjust this value as needed
                          fit: BoxFit
                              .cover, // To cover the entire area of the image box
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Name"),
                                Padding(
                                  padding: EdgeInsets.only(left: 180),
                                  child: Text("Date"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Message Display"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 120),
                                  child: Text(
                                    "23",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        backgroundColor: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 10, top: 10),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          "lib/images/dummy_images.jpg",
                          height: 100,
                          width: 100, // Adjust this value as needed
                          fit: BoxFit
                              .cover, // To cover the entire area of the image box
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Name"),
                                Padding(
                                  padding: EdgeInsets.only(left: 180),
                                  child: Text("Date"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Message Display"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 120),
                                  child: Text(
                                    "23",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        backgroundColor: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
