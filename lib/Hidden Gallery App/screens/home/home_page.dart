import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        shadowColor: Colors.black87,
        backgroundColor: const Color(0xff070F2B),
        title: const Text(
          'Gallery',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
