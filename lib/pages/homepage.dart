import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalin/moduls/bike.dart';
import 'package:rentalin/pages/bikelist.dart';
import 'package:rentalin/pages/biketile.dart';
import 'package:rentalin/pages/city_page.dart';

class Homepage extends StatefulWidget {
  final String username;

  const Homepage({super.key, required this.username});

  @override
  State<Homepage> createState() => _HomeState();
}

class _HomeState extends State<Homepage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final Bikelist bikeListInstance = Bikelist();

  final List<String> _images = [
    'lib/images/BIKEPOSTER.png',
    'lib/images/logo_rentalin.jpg',
    'lib/images/tulisan_rentalin.png',
  ];

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  void _navigateToCityPage(String cityName) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CityPage(cityName: cityName),
      ),
    );
  }

  void _goToNextPage() {
    if (_currentPage < _images.length - 1) {
      setState(() {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: const Color.fromRGBO(29, 35, 77, 1), // Background color
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
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
                        borderRadius: BorderRadius.circular(10),
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
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                margin: const EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color:
                      const Color.fromRGBO(29, 35, 77, 1), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Saldo",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Text(
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
                        padding: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            // Define the button's action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Button color
                            foregroundColor: Colors.white, // Text color
                          ),
                          child: const Text("Top Up"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 0, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, ${widget.username}!",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "CHOOSE YOUR RIDE TODAY!",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width - 30, // Adjust width
                    height: 200,
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      itemCount: _images.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                              image: AssetImage(_images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: IconButton(
                      onPressed: _goToPreviousPage,
                      icon: const Icon(Icons.arrow_back_ios),
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: _goToNextPage,
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _images.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? Colors.black : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Where do you want to rent a motorbike?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (String city in [
                    "JAKARTA.png",
                    "bandung.png",
                    "bogor.png",
                    "bali.png"
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () => _navigateToCityPage(city
                            .split('.')
                            .first
                            .toUpperCase()), // Pass city name
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black12,
                              width: 2,
                            ),
                            image: DecorationImage(
                              image: AssetImage("lib/images/$city"),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0.2,
                                blurRadius: 2,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 40), // Adjusted space
            SizedBox(
              height: 350, // Define the height for the ListView
              child: ListView.builder(
                itemCount: bikeListInstance
                    .getBikeList()
                    .length, // Get the number of bikes
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // Fetch the bike from the list
                  Bike bike = bikeListInstance.getBikeList()[index];
                  return BikeTile(
                    bike: bike,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
