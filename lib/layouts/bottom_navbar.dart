// import 'package:flutter/material.dart';

// import '../pages/home.dart';
// import '../pages/shorts.dart';
// import '../pages/subscriptions.dart';
// import '../pages/library.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0;

//   void _onNavTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final pages = [
//     Home(),
//     Shorts(),
//     Shorts(),
//     Subscriptions(),
//     Libraries(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home_filled),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.amp_stories_outlined),
//           activeIcon: Icon(Icons.amp_stories),
//           label: 'Shorts',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.add_circle_outline),
//           activeIcon: Icon(Icons.add_circle),
//           label: 'Create',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.subscriptions_outlined),
//           activeIcon: Icon(Icons.subscriptions),
//           label: 'Subscriptions',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.video_library_outlined),
//           activeIcon: Icon(Icons.video_library),
//           label: 'Library',
//         ),
//       ],
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: Colors.black,
//       currentIndex: _selectedIndex,
//       showSelectedLabels: false,
//       onTap: _onNavTapped,
//       showUnselectedLabels: false,
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.grey,
//     );
//   }
// }
