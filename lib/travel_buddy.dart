import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelBuddy extends StatelessWidget {
  const TravelBuddy({super.key});

  final List<Map<String, dynamic>> buddies = const [
    {
      "name": "Rohit Sharma",
      "city": "Goa",
      "dates": "20-25 Sept",
      "interests": "Beaches, Nightlife",
      "image": "https://i.pravatar.cc/150?img=5"
    },
    {
      "name": "Ananya Verma",
      "city": "Jaipur",
      "dates": "15-18 Oct",
      "interests": "Culture, Food",
      "image": "https://i.pravatar.cc/150?img=10"
    },
    {
      "name": "Arjun Singh",
      "city": "Agra",
      "dates": "10-12 Nov",
      "interests": "History, Photography",
      "image": "https://i.pravatar.cc/150?img=12"
    },
    {
      "name": "Priya Kapoor",
      "city": "Kerala",
      "dates": "5-12 Dec",
      "interests": "Nature, Ayurveda",
      "image": "https://i.pravatar.cc/150?img=15"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: buddies.length,
      itemBuilder: (context, index) {
        final buddy = buddies[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 6,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(buddy["image"]),
              radius: 30,
            ),
            title: Text(buddy["name"],
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("📍 ${buddy["city"]}  |  🗓 ${buddy["dates"]}",
                    style: GoogleFonts.poppins(fontSize: 14)),
                Text("💡 Interests: ${buddy["interests"]}",
                    style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey[700])),
              ],
            ),
            trailing: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                  Text("Request sent to ${buddy['name']} ✅"),
                  duration: const Duration(seconds: 2),
                ));
              },
              icon: const Icon(Icons.person_add, size: 18),
              label: const Text("Connect"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
        );
      },
    );
  }
}
