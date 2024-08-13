import 'package:flutter/material.dart';
import 'dart:io';

class Idrecog extends StatelessWidget {
  final File? image;

  const Idrecog({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Face Recognition'),
      ),
      body: Center(
        child: image != null ? Image.file(image!) : const Text('No image taken'),
      ),
    );
  }
}
