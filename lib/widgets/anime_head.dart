import 'package:animana/models/anime_model.dart';
import 'package:animana/screens/anime_screen.dart';
import 'package:animana/widgets/featured_anime_image.dart';
import 'package:animana/widgets/vertical_icon_widget.dart';
import 'package:flutter/material.dart';

class AnimeHead extends StatelessWidget {
  final Anime featuredAnime;

  const AnimeHead({
    Key key,
    @required this.featuredAnime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FeaturedAnimeImage(),
        Positioned(
          bottom: 48,
          left: 20,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.info_outline,
                onTapHandler: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimeScreen(
                        name: featuredAnime.name,
                        description: featuredAnime.description,
                        videoURL: featuredAnime.videoUrl,
                      ),
                    ),
                  );
                },
                title: 'INFO',
              ),
            ],
          ),
        )
      ],
    );
  }
}
