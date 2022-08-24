import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink,
        ),
        child: const Center(
          child: Text(
            'child',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
