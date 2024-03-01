import 'package:flutter/material.dart';
import 'package:youtube_web_and_mobile/player.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  // late YoutubePlayerController _controller;

  // final List<String> videoId = ['NDpbf19WM_0'];

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _controller = YoutubePlayerController.fromVideoId(
  //     videoId: 'NDpbf19WM_0',
  //     autoPlay: true,
  //     params: const YoutubePlayerParams(showFullscreenButton: true),
  //   )..setFullScreenListener((_) async {
  //       final currentTime = await _controller.currentTime;
  //       if (!mounted) return;
  //
  //       Navigator.pop(context, currentTime);
  //     });
  //
  //   SystemChrome.setPreferredOrientations(
  //     [
  //       DeviceOrientation.landscapeLeft,
  //       DeviceOrientation.landscapeRight,
  //     ],
  //   );
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Youtube Player Iframe Web And Mobile',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                    child: PlayerWidget(),
                  ),
                  Text(
                    "\nSolved By Avi",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            );
          } else {
            // Desktop layout
            return const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100, left: 200, right: 200),
                    child: PlayerWidget(),
                  ),
                  Text(
                    "Solved By Avi",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}


