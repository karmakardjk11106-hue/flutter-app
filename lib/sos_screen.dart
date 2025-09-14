import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SosScreen extends StatelessWidget {
  const SosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔴 Gradient AppBar
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.deepOrange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text("🚨 Emergency SOS",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
      ),

      // Big SOS Button
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.all(80),
            shape: const CircleBorder(),
            shadowColor: Colors.redAccent,
            elevation: 10,
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("🚨 SOS Sent with Location!")),
            );
          },
          child: Text("SOS",
              style: GoogleFonts.poppins(
                  fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
