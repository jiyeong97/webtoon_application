import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text(
          "Today's toons",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily:'RobotoMono'),
        ),
      ),
    );
  }
}
