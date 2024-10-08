import 'package:flutter/material.dart';
import 'package:webtoon_application/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';


class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
    required this.webtoonId,
  });

  final WebtoonEpisodeModel episode;
  final String webtoonId;

  onButtonTap() async{
    await launchUrlString("https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.green.shade400,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(8, 5),
              color: Colors.black.withOpacity(0.5),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
