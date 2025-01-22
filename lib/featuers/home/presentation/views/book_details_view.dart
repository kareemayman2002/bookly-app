import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/buyimg_list.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/buying_appbar.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/buying_details.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/buying_image.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/buying_moor_text.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/images_catogry_saller.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/text_seller_api.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsView({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            BuyingAppbar(),
            SizedBox(
              height: 40,
            ),
          ImagesCatogrySaller(bookModels: bookModel, widths: 150, heights: 224),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
              TextSellerApi(bookModel: bookModel, fontSizss: 20),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '⭐ 4.8 (2390)',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  height: 50,
                  width: 150,
                  child: Text(
                    '19.19 Dollrs',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                InkWell(
                  onTap: () {
                    bookModel.volumeInfo?.previewLink;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffEF8262),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    height: 50,
                    width: 150,
                    child: Text(
                      'Free preview',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text('You can also liko')),
            SizedBox(
              height: 40,
            ),
            BuyimgList(bookModel: bookModel,),
          ],
        ),
      ),
    );
  }
}
