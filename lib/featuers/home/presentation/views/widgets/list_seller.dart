import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/core/utils/error_message.dart';
import 'package:booking_app/featuers/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booking_app/featuers/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/catogry_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSeller extends StatelessWidget {
  
  const ListSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewsetBooksState>(
        builder: (context, stata) {
      if (stata is NewBooksSuccess) {
        return SliverList.builder(
          itemBuilder: (context, index) {
            return CatogrySeller(
              bookModel: stata.books[index],
            );
          },
          itemCount: stata.books.length,
        );
      } else if (stata is NewBooksError) {
        return SliverToBoxAdapter(
            child: ErrorMessage(errorMessage: stata.errMessage));
      } else {
        return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()));
      }
    });
  }
}
// '${stata.books[index].volumeInfo?.imageLinks?.thumbnail}??${NetworkImage('https://img.freepik.com/premium-photo/old-vintage-books-generative-ai_186938-7018.jpg')}'