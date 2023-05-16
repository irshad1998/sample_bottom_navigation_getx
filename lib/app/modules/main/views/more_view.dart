import 'package:flutter/material.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('More view'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'More view',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
    ;
  }
}
