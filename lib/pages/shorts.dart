import 'package:flutter/material.dart';

import '../layouts/appbar.dart';

import '../layouts/shorts_layout.dart';

class Shorts extends StatelessWidget {
  const Shorts({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                ShortsVid(),
                ShortsVid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
