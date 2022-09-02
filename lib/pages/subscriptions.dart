import 'package:flutter/material.dart';

import '../layouts/appbar.dart';
import '../layouts/subscribed.dart';
import '../layouts/categories_subscriptions.dart';
import '../layouts/youtube_video.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const YoutubeAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Subscribed(),
                Subscribed(),
                Subscribed(),
                Subscribed(),
                Subscribed(),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'ALL',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SubscribedCategories(),
              ],
            ),
          ),
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
