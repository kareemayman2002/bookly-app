import 'package:flutter/material.dart';

class BuyingMoorText extends StatelessWidget {
  const BuyingMoorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The Jungle Book',
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Rudyard Kipling',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '⭐ 4.8 (2390)',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
