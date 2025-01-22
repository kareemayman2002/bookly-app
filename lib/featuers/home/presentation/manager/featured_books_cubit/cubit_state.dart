import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';

class FeaturedBooksState {}
// class InitialState extends FeaturedBooksState{}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksError extends FeaturedBooksState {
  final String errMessage;

   FeaturedBooksError(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

   FeaturedBooksSuccess(this.books);
}