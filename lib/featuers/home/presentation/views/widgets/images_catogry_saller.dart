import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class ImagesCatogrySaller extends StatelessWidget {
  final BookModel bookModels;

  final double widths;
  final double heights;
  ImagesCatogrySaller(
      {super.key,
      required this.bookModels,
      required this.widths,
      required this.heights});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widths,
      height: heights,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  '${bookModels.volumeInfo!.imageLinks!.thumbnail}??${AssetImage(AssetsData.testImage)}'))),
    );
  }
}
