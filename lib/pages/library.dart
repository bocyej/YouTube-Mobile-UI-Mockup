import 'package:flutter/material.dart';

import '../layouts/appbar.dart';

import 'package:youtube/layouts/history_video.dart';

class Libraries extends StatelessWidget {
  Libraries({Key? key}) : super(key: key);

  List<String> options = <String>['A-Z  ', 'Recently Added'];
  String dropdownValue = 'A-Z  ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const YoutubeAppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 25, left: 25)),
              Row(
                children: [
                  const Icon(
                    Icons.history,
                    color: Colors.white,
                    size: 25,
                  ),
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  const Text(
                    ' History',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 145)),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'VIEW ALL',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          // 1st Row (Videos)
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(padding: EdgeInsets.only(left: 25)),
                HtVid(),
                Padding(padding: EdgeInsets.only(left: 25)),
                HtVid(),
                Padding(padding: EdgeInsets.only(left: 25)),
                HtVid(),
                Padding(padding: EdgeInsets.only(left: 25)),
                HtVid(),
                Padding(padding: EdgeInsets.only(left: 25)),
                HtVid(),
                Padding(padding: EdgeInsets.only(left: 25)),
              ],
            ),
          ),
          // const Padding(padding: EdgeInsets.only(bottom: 100)),
          const Divider(
            color: Colors.grey,
          ),
          // 2nd Row
          Container(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.video_settings,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: const Text(
                        '    Your videos',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.vertical_align_bottom,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: const Text(
                        '    Downloads',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.local_movies_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: const Text(
                        '    Your movies',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.content_cut,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: const Text(
                        '    Your clips',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 15)),
          const Divider(
            color: Colors.grey,
          ),
          // 3rd Row (Playlist)
          Container(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Playlist',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 200)),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor: Colors.black,
                        value: dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        selectedItemBuilder: (BuildContext context) {
                          return options.map((String value) {
                            return Container(
                              alignment: Alignment.centerRight,
                              width: 50,
                              child: Text(
                                dropdownValue,
                                // textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            );
                          }).toList();
                        },
                        icon: const Icon(
                          Icons.expand_more,
                          color: Colors.white,
                        ),
                        items: options
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: SizedBox(
                              width: 100,
                              child: Text(value,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 15)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_outlined,
                    color: Colors.blue,
                  ),
                  label: const Text(
                    '    New playlist',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
