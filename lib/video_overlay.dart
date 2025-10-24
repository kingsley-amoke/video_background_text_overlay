import 'package:flutter/material.dart';
import 'package:video_overlay_app/pages/homepage.dart';

class VideoOverlayApp extends StatelessWidget {
  const VideoOverlayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Overlay App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
