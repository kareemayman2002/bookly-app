import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class TextSellerApi extends StatelessWidget {
  final BookModel bookModel;
  final double fontSizss;
  const TextSellerApi({super.key, required this.bookModel, required this.fontSizss});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${bookModel.volumeInfo!.title}',
          style: TextStyle(fontSize: fontSizss),
        ),
        Text(
          '${bookModel.volumeInfo!.authors![0]}',
          style: TextStyle(fontSize: fontSizss),
        ),
      ],
    );
  }
}
