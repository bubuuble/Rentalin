import 'package:rentalin/moduls/bike.dart';

class Bikelist {
  List<Bike> bikeShop = [
    Bike(
        name: "Beat",
        price: "70.000",
        description: "Motor Beat",
        imagePath: 'lib/images/beat1.jpg'),
    Bike(
        name: "Beat",
        price: "70.000",
        description: "Beat warna hijau",
        imagePath: "lib/images/beat2.jpg"),
    Bike(
        name: "Beat",
        price: "70.000",
        description: "Beat warna Merah",
        imagePath: "lib/images/beat3.jpg"),
    Bike(
        name: "N-Max",
        price: "100.000",
        description: "N-Max Biru",
        imagePath: "lib/images/nmax1.png")
  ];

  List<Bike> userBikelist = [];

  List<Bike> getBikeList() {
    return bikeShop;
  }

  List<Bike> getUserBikelist() {
    return userBikelist;
  }
}
