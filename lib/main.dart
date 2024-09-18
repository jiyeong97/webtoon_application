import 'package:flutter/material.dart';
import 'package:webtoon_application/screens/home_screen.dart';
import 'package:webtoon_application/services/api_service.dart';
void main() {
  ApiService().getTodaysToons();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
