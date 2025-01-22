import 'package:booking_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30, bottom: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 75,
            height: 26.11,
            decoration: BoxDecoration(
                image:
                    DecorationImage(fit: BoxFit.fill, image: AssetImage(AssetsData.logo))),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 40,
              ))
        ],
      ),
    );
  }
}
