import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/featuers/home/presentation/manager/featured_books_cubit/cubit_cubit.dart';
import 'package:booking_app/featuers/home/presentation/manager/featured_books_cubit/cubit_state.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/catogry_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCatogry extends StatelessWidget {
  const ListCatogry({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, stata) {
      if (stata is FeaturedBooksSuccess) {
        return SizedBox(
          height: 224,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CatogryImages('${stata.books[index].volumeInfo?.imageLinks?.thumbnail}??${AssetImage(AssetsData.testImage)}');

            
            },
            itemCount: 5,
          ),
        );
      } else if (stata is FeaturedBooksError) {
        return Text('Error');
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
