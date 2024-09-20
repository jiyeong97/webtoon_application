import 'package:flutter/material.dart';
import 'package:webtoon_application/models/webtoon_model.dart';
import 'package:webtoon_application/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

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

      body: FutureBuilder(
        future: webtoons,
         builder: (context, snapshot){
          if(snapshot.hasData){
            return const Text("There is data!");
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
         }),
    );
  }
}
