import 'package:animana/data/images.dart';
import 'package:flutter/material.dart';

class FeaturedAnimeImage extends StatelessWidget {
  const FeaturedAnimeImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.transparent],
        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: Image.network(AnimeImages.hxh),
    );
  }
}
