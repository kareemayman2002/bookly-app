import 'package:booking_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CatogryImages extends StatelessWidget {
  String images;
   CatogryImages(this.images);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6,right: 6,bottom: 14),
      child: Container(
        
        width: 150,
        height: 224,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(images)),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
