import 'package:booking_app/core/utils/assets.dart';
import 'package:flutter/material.dart';


class BuyingImage extends StatelessWidget {
  const BuyingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 224,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetsData.testImage)),
      ),
    );
  }
}
