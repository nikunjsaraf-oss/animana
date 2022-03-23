import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MediaPlayerContainer extends StatefulWidget {
  final String videoUrl;

  const MediaPlayerContainer({Key key, this.videoUrl}) : super(key: key);

  @override
  _MediaPlayerContainerState createState() => _MediaPlayerContainerState();
}

class _MediaPlayerContainerState extends State<MediaPlayerContainer> {
  YoutubePlayerController youtubePlayerController;

  void runYoutubePlayer() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl),
      flags: YoutubePlayerFlags(
        enableCaption: false,
        forceHD: true,
        isLive: false,
        autoPlay: false,
        disableDragSeek: false,
      ),
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: youtubePlayerController,
      ),
      builder: (context, player) => Container(
        width: double.infinity,
        height: 250,
        child: player,
      ),
    );
  }
}
