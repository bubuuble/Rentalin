// nearbypage.dart
import 'package:flutter/material.dart';
import 'package:rentalin/moduls/nearby_list.dart';
import 'package:rentalin/pages/nearbylist.dart';
import 'package:rentalin/pages/nearbytile.dart';

class Nearbypage extends StatefulWidget {
  const Nearbypage({super.key});

  @override
  State<Nearbypage> createState() => _NearbypageState();
}

class _NearbypageState extends State<Nearbypage> {
  String _selectedType = 'All';
  String _selectedColor = 'All';
  double _minPrice = 0;
  double _maxPrice = double.infinity;

  List<Nearby> _filteredBikes = nearby; // Ensure this is a List<Nearby>

  @override
  void initState() {
    super.initState();
    _applyFilters();
  }

  void _applyFilters() {
    setState(() {
      _filteredBikes = nearby.where((bike) {
        double price = double.tryParse(bike.price) ?? 0;
        if (price < _minPrice || price > _maxPrice) return false;

        // Uncomment these lines if filtering by type and color is needed
        // if (_selectedType != 'All' && bike.bikeName != _selectedType) return false;
        // if (_selectedColor != 'All' && bike.color != _selectedColor) return false;

        return true;
      }).toList();
    });
  }

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filter Options'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButton<String>(
                value: _selectedType,
                onChanged: (value) {
                  setState(() {
                    _selectedType = value ?? 'All';
                    _applyFilters();
                  });
                },
                items: ['All', 'Type1', 'Type2'].map((type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
              ),
              DropdownButton<String>(
                value: _selectedColor,
                onChanged: (value) {
                  setState(() {
                    _selectedColor = value ?? 'All';
                    _applyFilters();
                  });
                },
                items: ['All', 'Red', 'Blue'].map((color) {
                  return DropdownMenuItem(
                    value: color,
                    child: Text(color),
                  );
                }).toList(),
              ),
              RangeSlider(
                values: RangeValues(
                  _minPrice.clamp(0.0, 200000.0),
                  _maxPrice.clamp(0.0, 200000.0),
                ),
                min: 0,
                max: 200000,
                onChanged: (values) {
                  setState(() {
                    _minPrice = values.start.clamp(0.0, 200000.0);
                    _maxPrice = values.end.clamp(_minPrice, 200000.0);
                    _applyFilters();
                  });
                },
                labels: RangeLabels(
                  '$_minPrice',
                  '$_maxPrice',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Apply'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            leading: Container(),
            expandedHeight: 100.0,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Nearby Rents",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: IconButton(
                      icon: const Icon(
                        Icons.filter_list,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: _showFilterDialog,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final bike = _filteredBikes[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Nearbytile(nearby: bike),
                  );
                },
                childCount: _filteredBikes.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
