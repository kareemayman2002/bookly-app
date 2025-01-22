import 'package:flutter/material.dart';

class TextBestSeller extends StatelessWidget {
  const TextBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15),
        alignment: Alignment.topLeft,
        child: Text(
          'Best Seller',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ));
  }
}
