import 'package:flutter/material.dart';

class SosButton extends StatelessWidget {
  const SosButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        padding: const EdgeInsets.all(60),
        shape: const CircleBorder(),
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("SOS Sent!")),
        );
      },
      child: const Text(
        "SOS",
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
