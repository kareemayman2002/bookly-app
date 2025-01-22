import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';

abstract class NewsetBooksState {}

class NewBooksInitial extends NewsetBooksState {}

class NewBooksLoading extends NewsetBooksState {}

class NewBooksError extends NewsetBooksState {
  final String errMessage;

   NewBooksError(this.errMessage);
}

class NewBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

   NewBooksSuccess(this.books);
}