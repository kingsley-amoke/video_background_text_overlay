import 'package:flutter/material.dart';
import 'package:video_overlay_app/widgets/overlay_text.dart';
import 'package:video_overlay_app/widgets/video_background.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/sample.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTV = size.width > 1000; // heuristic for TV screens

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: VideoBackground(controller: _controller)),
          Positioned.fill(
            child: OverlayText(isTV: isTV, size: size),
          ),
        ],
      ),
    );
  }
}
