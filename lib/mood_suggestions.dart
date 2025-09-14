import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodSuggestions extends StatelessWidget {
  const MoodSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    final moods = ["Relax", "Adventure", "History", "Foodie"];
    final places = [
      {"name": "Sunny Beach", "mood": "Relax"},
      {"name": "Mountain Trek", "mood": "Adventure"},
      {"name": "Ancient Ruins", "mood": "History"},
      {"name": "Food Alley", "mood": "Foodie"},
    ];

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.deepOrange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text("🌟 Mood Explorer",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
      ),

      body: Column(
        children: [
          // Chips
          SizedBox(
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: moods.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, i) => Chip(
                label: Text(moods[i],
                    style: GoogleFonts.poppins(color: Colors.white)),
                backgroundColor: Colors.primaries[i % Colors.primaries.length],
                padding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              ),
            ),
          ),

          // List of Places
          Expanded(
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, i) => Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 3,
                child: ListTile(
                  leading: const Icon(Icons.place, color: Colors.teal),
                  title: Text(places[i]['name']!,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                  subtitle: Text("Mood: ${places[i]['mood']}",
                      style: GoogleFonts.poppins(color: Colors.grey[600])),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
