import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rentalin/pages/home.dart';
import 'dart:io';

import 'package:rentalin/pages/idrecog.dart';

class Facerecog extends StatefulWidget {
  const Facerecog({super.key});

  @override
  State<Facerecog> createState() => _FacerecogState();
}

class _FacerecogState extends State<Facerecog> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _takePicture() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });

      // Store the image in the database
      await _storeImage(_image!);

      // Perform ID verification (implement your own verification logic here)

      // Navigate to the next page if verification succeeds
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Idrecog(image: _image)),
      );
    } else {
      print('No image selected.');
    }
  }

  Future<void> _storeImage(File image) async {
    // Your logic for storing the image in the database
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
                color: const Color.fromRGBO(29, 35, 77, 1),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: const Offset(
                        0, 4), // changes the position of the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  const Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Authentication",
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Verify Your Face",
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
                      const Icon(
                        Icons.brightness_1,
                        size: 10,
                        color: Color.fromARGB(255, 83, 16, 254),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Make sure your face is aligned with the instructions",
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.brightness_1,
                        size: 10,
                        color: Color.fromARGB(255, 83, 16, 254),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Make sure you are in a bright environment",
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.brightness_1,
                        size: 10,
                        color: Color.fromARGB(255, 83, 16, 254),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Keep your camera steady",
                        style: GoogleFonts.poppins(
                            fontSize: 13,
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
              onPressed: _takePicture, // Assign the method to the button press
              icon: const Icon(Icons.camera_alt_rounded),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                }, // Assign the method to the button press
                icon: const Icon(Icons.abc_outlined),
                label: Text(
                  'Go To Next Page',
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
            ),
          ],
        ),
      ),
    );
  }
}
