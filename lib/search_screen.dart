import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'booking_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController locationController = TextEditingController();
  List<QueryDocumentSnapshot> hotels = [];

  void searchHotels() async {
    if (locationController.text.isEmpty) return;
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('hotels')
        .where('location', isEqualTo: locationController.text)
        .get();

    setState(() {
      hotels = snapshot.docs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: locationController,
            decoration: InputDecoration(
                labelText: "Enter Location",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: searchHotels,
            child: const Text("Search Hotels"),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                var hotel = hotels[index];
                return Card(
                  child: ListTile(
                    title: Text(hotel['name']),
                    subtitle: Text("₹${hotel['price']} per night"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BookingScreen(hotelId: hotel.id)),
                        );
                      },
                      child: const Text("Book"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
