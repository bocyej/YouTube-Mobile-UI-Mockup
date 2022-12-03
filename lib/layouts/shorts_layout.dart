import 'package:flutter/material.dart';

class ShortsVid extends StatelessWidget {
  const ShortsVid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: SizedBox(
        height: 656,
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/vertical1.jpg',
                width: 650,
                height: 700,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.only(right: 22),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.only(right: 22),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 195)),
                  IconButton(
                    padding: const EdgeInsets.only(right: 22),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Text(
                      '155K',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  IconButton(
                    padding: const EdgeInsets.only(right: 22),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.thumb_down,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 14),
                    child: const Text(
                      'Dislike',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  IconButton(
                    padding: const EdgeInsets.only(right: 22),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 22),
                    child: const Text(
                      '750',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  IconButton(
                    padding: const EdgeInsets.only(right: 22),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 17),
                    child: const Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(right: 17)),
                      const Text(
                        'TitleTitleTitle',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 217)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_control,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15)),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/icon1.png'),
                        radius: 20,
                      ),
                      const Padding(padding: EdgeInsets.only(right: 10)),
                      const Text(
                        'ChannelName',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 10)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        child: const Text(
                          'SUBSCRIBE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 63)),
                      Material(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: const AssetImage('assets/icons/icon1.png'),
                            height: 42,
                            width: 42,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
