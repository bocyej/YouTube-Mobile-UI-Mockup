import 'package:flutter/material.dart';

class YtVid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Container(
        height: 300,
        // width: double.infinity,
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            // Padding(padding: EdgeInsets.only(bottom: 15)),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Padding(padding: EdgeInsets.only(top: 5)),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Image.asset('assets/images/yt_thumb1.jpg'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15)),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/icon1.jpg'),
                        radius: 20,
                      ),
                      Column(
                        children: [
                          // Title
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Title',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 123)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 18,
                                ),
                              ),
                              // Channel Name
                              Text(
                                'lsdkfhb',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              // Views
                              Text(
                                ' · 14K views · ',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              // Time
                              Text(
                                '1 hour ago',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(right: 95)),
                      const Icon(
                        Icons.more_vert,
                        size: 20,
                        color: Colors.white,
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
