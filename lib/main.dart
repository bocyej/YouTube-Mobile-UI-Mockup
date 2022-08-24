import 'package:flutter/material.dart';

import 'custom_colors/color_black.dart';

import 'layouts/appbar.dart';
import 'layouts/categories_home.dart';
import 'layouts/youtube_video.dart';
import 'layouts/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: const MyHomePage(title: 'YouTube'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const YoutubeAppBar(),
      body: Column(
        children: [
          // Categories
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HomeCategories(),
                HomeCategories(),
                HomeCategories(),
                HomeCategories(),
                HomeCategories(),
              ],
            ),
          ),
          // Videos
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
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
      bottomNavigationBar: BottomNavBar(),
    );
    // );
  }
}
