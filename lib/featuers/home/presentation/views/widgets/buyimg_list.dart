import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/core/utils/error_message.dart';
import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:booking_app/featuers/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booking_app/featuers/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/buying_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuyimgList extends StatelessWidget {
  final BookModel bookModel;
  const BuyimgList({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewsetBooksState>(
        builder: (context, stata) {
      if (stata is NewBooksSuccess) {
        return SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 6),
                width: 90,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            '${stata.books[index].volumeInfo?.imageLinks?.thumbnail}??${AssetImage(AssetsData.testImage)}'))),
              );
            },
            itemCount: bookModel.volumeInfo!.imageLinks!.thumbnail!.length,
          ),
        );
      } else if (stata is NewBooksError) {
        return ErrorMessage(errorMessage: stata.errMessage);
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
// BlocBuilder<NewestBooksCubit, NewsetBooksState>(
//         builder: (context, stata) {
//       if (stata is NewBooksSuccess) {
//         return SliverList.builder(
//           itemBuilder: (context, index) {
//             return CatogrySeller(
//               bookModel: stata.books[index],
//             );
//           },
//           itemCount: stata.books.length,
//         );
//       } else if (stata is NewBooksError) {
//         return SliverToBoxAdapter(
//             child: ErrorMessage(errorMessage: stata.errMessage));
//       } else {
//         return SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()));
//       }
//     });







