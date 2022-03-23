import 'package:animana/models/anime_model.dart';
import 'package:animana/screens/anime_screen.dart';
import 'package:flutter/material.dart';

class CustomHorizontalScrollBar extends StatelessWidget {
  final String title;
  final List<Anime> animeList;

  const CustomHorizontalScrollBar({
    Key key,
    this.title,
    this.animeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
        Container(
          height: 150,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 8,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final Anime anime = animeList[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimeScreen(
                        name: anime.name,
                        description: anime.description,
                        videoURL: anime.videoUrl,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 90,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image.network(anime.imageUrl),
                  ),
                ),
              );
            },
            itemCount: animeList.length,
          ),
        )
      ],
    );
  }
}
