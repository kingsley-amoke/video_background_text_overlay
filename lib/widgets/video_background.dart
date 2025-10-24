import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatelessWidget {
  const VideoBackground({super.key, required this.controller});

  final VideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized
        ? FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: controller.value.size.width,
              height: controller.value.size.height,
              child: VideoPlayer(controller),
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }
}
