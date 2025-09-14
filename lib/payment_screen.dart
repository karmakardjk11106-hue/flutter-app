import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PaymentScreen extends StatefulWidget {
  final double amount;
  final String bookingId;
  const PaymentScreen({super.key, required this.amount, required this.bookingId});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handleSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handleError);
  }

  void openCheckout() {
    var options = {
      'key': 'YOUR_RAZORPAY_KEY', // Replace with your key
      'amount': (widget.amount * 100).toInt(),
      'name': 'TrailTale Booking',
      'description': 'Hotel/Cab Payment',
      'prefill': {'contact': '', 'email': ''},
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print(e);
    }
  }

  void _handleSuccess(PaymentSuccessResponse response) async {
    print("Payment Success: ${response.paymentId}");
    // Update booking status
    await FirebaseFirestore.instance
        .collection('bookings')
        .doc(widget.bookingId)
        .update({'status': 'confirmed', 'paymentId': response.paymentId});
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Booking Confirmed!")));
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  void _handleError(PaymentFailureResponse response) {
    print("Payment Error: ${response.code} - ${response.message}");
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Payment Failed!")));
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment")),
      body: Center(
        child: ElevatedButton(
          onPressed: openCheckout,
          child: Text("Pay ₹${widget.amount}"),
        ),
      ),
    );
  }
}
