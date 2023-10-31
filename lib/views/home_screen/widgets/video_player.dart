// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zaisystems/consts/imports.dart';

class YoutubePlayerCustomSubtitle extends StatefulWidget {
  final String videoId = 'Wu44C8tiE5E';
  const YoutubePlayerCustomSubtitle({super.key});

  @override
  State<YoutubePlayerCustomSubtitle> createState() =>
      _YoutubePlayerCustomSubtitleState();
}

class _YoutubePlayerCustomSubtitleState
    extends State<YoutubePlayerCustomSubtitle> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: const YoutubePlayerFlags(autoPlay: false, mute: false))
      ..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_controller.value.playerState == PlayerState.playing) {
      final currentTime = _controller.value.position.inSeconds;
    }
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: YoutubePlayer(controller: _controller)),
      ],
    )
        .box
        .color(whiteColor)
        .padding(const EdgeInsets.all(10))
        .roundedLg
        .outerShadowLg
        .make();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
