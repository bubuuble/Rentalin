import 'package:flutter/material.dart';
import 'dart:io';

class Facerecog extends StatelessWidget {
  final File? image;

  const Facerecog({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Face Recognition'),
      ),
      body: Center(
        child: image != null ? Image.file(image!) : Text('No image taken'),
      ),
    );
  }
}
