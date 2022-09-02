import 'package:flutter/material.dart';

import '../custom_colors/color_black.dart';

import '../pages/home.dart';
import '../pages/shorts.dart';
import '../pages/subscriptions.dart';
import '../pages/library.dart';
import '../layouts/appbar.dart';

void main() {
  runApp(const Home());
}

class Structure extends StatelessWidget {
  const Structure({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube App',
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: const StructurePage(title: 'YouTube'),
    );
  }
}

class StructurePage extends StatefulWidget {
  const StructurePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StructurePage> createState() => _StructurePageState();
}

class _StructurePageState extends State<StructurePage> {
  int _selectedIndex = 0;

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [
    const Home(),
    const Shorts(),
    const Subscriptions(),
    Libraries(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: const YoutubeAppBar(),
      body: pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.black,
            useRootNavigator: true,
            context: context,
            builder: (context) {
              return Wrap(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.amp_stories,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Create a Short',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.upload_sharp,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Upload a video',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.sensors,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Go live',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Create',
        child: new Icon(Icons.add_circle_outline),
        // elevation: 4.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.amp_stories_outlined),
            activeIcon: Icon(Icons.amp_stories),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Library',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        onTap: _onNavTapped,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    // );
  }
}
