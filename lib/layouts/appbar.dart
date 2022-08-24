import 'package:flutter/material.dart';

class YoutubeAppBar extends StatelessWidget with PreferredSizeWidget {
  const YoutubeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle,
                color: Colors.red,
              ),
              label: const Text(
                'YouTube',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(0)),
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.airplay),
          tooltip: 'Connect to Device',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_none),
          tooltip: 'Notifications',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Search',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.account_circle_outlined),
          tooltip: 'Profile',
          onPressed: () {},
        ),
        const Padding(padding: EdgeInsets.only(right: 10)),
      ],
    );
    // width: 100,
    // height: 25,
  }
}
