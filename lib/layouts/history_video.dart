import 'package:flutter/material.dart';

class HtVid extends StatelessWidget {
  const HtVid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: SizedBox(
        height: 100,
        child: Container(
          height: 100,
          child: Column(
            children: [
              Container(
                height: 85,
                child: Image.asset('assets/images/yt_thumb1.jpg'),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              const Text(
                'TitleTitleTitle',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 5)),
              const Text(
                'Channel Name',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
