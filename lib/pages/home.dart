import 'package:flutter/material.dart';

import '../custom_colors/color_black.dart';

import '../layouts/appbar.dart';
import '../layouts/categories_home.dart';
import '../layouts/youtube_video.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const YoutubeAppBar(),
      body: Column(
        children: [
          // Categories
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HomeCategories(),
              ],
            ),
          ),
          // Videos
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                YtVid(),
                YtVid(),
                YtVid(),
                YtVid(),
                YtVid(),
                YtVid(),
                YtVid(),
                YtVid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
