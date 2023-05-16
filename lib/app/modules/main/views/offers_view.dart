import 'package:flutter/material.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('Offers View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Offers View',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
    ;
  }
}
