import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/images_catogry_saller.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/text_seller_api.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatogrySeller extends StatelessWidget {
  
  final BookModel bookModel;

  const CatogrySeller({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.kBookDetailsView, extra: bookModel);
          // Navigator.push(context, MaterialPageRoute(builder: (_) {
          //   return BuyingScreen();
          // }));
        },
        child: Row(
          children: [
            ImagesCatogrySaller(bookModels: bookModel,widths: 70,heights: 105,),
            SizedBox(
              width: 10,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextSellerApi(bookModel: bookModel, fontSizss: 15),
                  Text('J.K. Rowling'),
                  Row(
                    children: [
                      Text(
                        '19.99 Dollar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        '⭐ 4.8(2390)',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
