import 'package:flutter/widgets.dart';

class Anime {
  final String name;
  final String imageUrl;
  final String videoUrl;
  final String description;

  const Anime({
    @required this.name,
    @required this.imageUrl,
    @required this.videoUrl,
    @required this.description,
  });
}
