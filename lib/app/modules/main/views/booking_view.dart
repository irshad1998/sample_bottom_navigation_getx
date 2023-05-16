import 'package:flutter/material.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Booking view'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Booking view',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
