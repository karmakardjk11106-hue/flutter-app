import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'payment_screen.dart';

class CabBookingScreen extends StatelessWidget {
  final String cabId;
  final String pickup;
  final String drop;
  final String userId = "user123"; // Replace with actual user ID

  CabBookingScreen({
    super.key,
    required this.cabId,
    required this.pickup,
    required this.drop,
  });

  void confirmBooking(BuildContext context) async {
    DocumentReference bookingRef =
    await FirebaseFirestore.instance.collection('bookings').add({
      'cabId': cabId,
      'userId': userId,
      'pickup': pickup,
      'drop': drop,
      'status': 'pending',
      'bookingDate': DateTime.now(),
    });

    // Navigate to payment screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentScreen(
          amount: 500, // Replace with actual cab price
          bookingId: bookingRef.id,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cab Booking Confirmation")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => confirmBooking(context),
          child: const Text("Confirm Booking & Pay"),
        ),
      ),
    );
  }
}
