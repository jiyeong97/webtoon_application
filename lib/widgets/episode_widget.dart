import 'package:flutter/material.dart';
import 'package:webtoon_application/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';


class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
  });

  final WebtoonEpisodeModel episode;

  onButtonTap() async{
    await launchUrlString("https://goolge.com");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
