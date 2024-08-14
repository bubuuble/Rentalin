import 'package:flutter/material.dart';

class CityPage extends StatelessWidget {
  final String cityName;

  const CityPage({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cityName),
      ),
      body: Center(
        child: Text(
          'Welcome to $cityName!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
