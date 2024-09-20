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
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var webtoon = snapshot.data![index];
                return Text(webtoon.title);
              },
              separatorBuilder: (context, index) =>
              const SizedBox(width: 20,)
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
         }),
    );
  }
}
