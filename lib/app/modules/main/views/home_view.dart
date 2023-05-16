import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Home View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Home View',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
