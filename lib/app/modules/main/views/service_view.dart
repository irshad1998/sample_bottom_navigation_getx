import 'package:flutter/material.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Service View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Service View',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
    ;
  }
}
