import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:rentalin/pages/facerecog.dart';

class Autenthication extends StatefulWidget {
  const Autenthication({super.key});

  @override
  State<Autenthication> createState() => _AutenthicationState();
}

class _AutenthicationState extends State<Autenthication> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _takePicture() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      // Save the image to the database here

      // Navigate to another page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Facerecog(image: _image)),
      );
    } else {
      print('No image selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 35, 77, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(0, 4), // changes the position of the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Autenthication",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Verify Your Identity",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Box to take a picture of our identity card
            Container(
              height: 400,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.camera_alt,
                  size: 100,
                  color: Colors.grey[400],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.brightness_1,
                        size: 10,
                        color: Color.fromARGB(255, 83, 16, 254),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Upload your KTP or Passport",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.brightness_1,
                        size: 10,
                        color: Color.fromARGB(255, 83, 16, 254),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Keep your camera steady",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.brightness_1,
                        size: 10,
                        color: Color.fromARGB(255, 83, 16, 254),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Make sure you are in a bright environment",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Button to take picture
            ElevatedButton.icon(
              onPressed: _takePicture,
              icon: Icon(Icons.camera_alt_rounded),
              label: Text(
                'Take Picture',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
