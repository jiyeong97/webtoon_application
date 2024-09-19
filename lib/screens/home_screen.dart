import 'package:flutter/material.dart';
import 'package:webtoon_application/models/webtoon_model.dart';
import 'package:webtoon_application/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async{
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        
        title: const Center(
          child: Text(
            "Today's toons",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),
          ),
        ),
      ),
    );
  }
}
