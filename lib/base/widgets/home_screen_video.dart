/*
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreenVideo extends StatefulWidget {
  const HomeScreenVideo({super.key});

  @override
  _HomeScreenVideoState createState() => _HomeScreenVideoState();
}

class _HomeScreenVideoState extends State<HomeScreenVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/assets/images/video/airplane.mp4")
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
        _controller.play(); // Auto-play the video
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: _controller.value.isInitialized
          ? ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: VideoPlayer(_controller),
      )
          : Center(child: CircularProgressIndicator()), // Show loading while video initializes
    );
  }
}
*/
