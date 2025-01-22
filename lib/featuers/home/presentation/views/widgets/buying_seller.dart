import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BuyingSeller extends StatelessWidget {
  final BookModel bookModel;
  const BuyingSeller({
    super.key, required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      decoration:  BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: NetworkImage('${bookModel.volumeInfo!.imageLinks!.thumbnail}??${AssetImage(AssetsData.testImage)}'))),
    );
  }
}
