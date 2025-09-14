import 'package:flutter/material.dart';
import 'search_screen.dart';
import 'cab_search_screen.dart';

class BookingHomeScreen extends StatefulWidget {
  const BookingHomeScreen({super.key});

  @override
  State<BookingHomeScreen> createState() => _BookingHomeScreenState();
}

class _BookingHomeScreenState extends State<BookingHomeScreen> {
  bool showHotels = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Toggle buttons
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: showHotels ? Colors.teal : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    showHotels = true;
                  });
                },
                child: const Text("Hotels"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: !showHotels ? Colors.teal : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    showHotels = false;
                  });
                },
                child: const Text("Cabs"),
              ),
            ],
          ),
        ),
        // Show corresponding screen
        Expanded(
          child: showHotels
              ? const SearchScreen() // Hotel search
              : const CabSearchScreen(), // Cab search
        ),
      ],
    );
  }
}
