import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'payment_screen.dart';

class BookingScreen extends StatelessWidget {
  final String hotelId;
  final String userId = "user123"; // Replace with actual user ID

  BookingScreen({super.key, required this.hotelId});

  void confirmBooking(BuildContext context) async {
    DocumentReference bookingRef =
    await FirebaseFirestore.instance.collection('bookings').add({
      'hotelId': hotelId,
      'userId': userId,
      'status': 'pending',
      'bookingDate': DateTime.now(),
    });

    // Navigate to payment with amount (you can fetch hotel price if needed)
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PaymentScreen(
            amount: 1000, // Replace with actual hotel price
            bookingId: bookingRef.id,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Booking Confirmation")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => confirmBooking(context),
          child: const Text("Confirm Booking & Pay"),
        ),
      ),
    );
  }
}
