import 'package:flutter/material.dart';

import '../widgets/description_widget.dart';
import '../widgets/media_player.dart';

class AnimeScreen extends StatelessWidget {
  final String name;
  final String description;
  final String videoURL;

  const AnimeScreen({
    Key key,
    @required this.name,
    @required this.description,
    this.videoURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontFamily: 'ZenDots'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DescriptionContainer(description: description),
            Text(
              'Official Trailer:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'Raleway',
              ),
            ),
            MediaPlayerContainer(
              videoUrl: videoURL,
            ),
          ],
        ),
      ),
    );
  }
}
