import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'cab_booking_screen.dart';

class CabSearchScreen extends StatefulWidget {
  const CabSearchScreen({super.key});

  @override
  State<CabSearchScreen> createState() => _CabSearchScreenState();
}

class _CabSearchScreenState extends State<CabSearchScreen> {
  TextEditingController pickupController = TextEditingController();
  TextEditingController dropController = TextEditingController();
  List<QueryDocumentSnapshot> cabs = [];

  void searchCabs() async {
    if (pickupController.text.isEmpty || dropController.text.isEmpty) return;

    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('cabs')
        .where('available', isEqualTo: true)
        .get();

    setState(() {
      cabs = snapshot.docs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: pickupController,
            decoration: InputDecoration(
              labelText: "Pickup Location",
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: dropController,
            decoration: InputDecoration(
              labelText: "Drop Location",
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: searchCabs,
            child: const Text("Search Cabs"),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: cabs.length,
              itemBuilder: (context, index) {
                var cab = cabs[index];
                return Card(
                  child: ListTile(
                    title: Text(cab['name']),
                    subtitle: Text("₹${cab['price']} per ride"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CabBookingScreen(
                              cabId: cab.id,
                              pickup: pickupController.text,
                              drop: dropController.text,
                            ),
                          ),
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
