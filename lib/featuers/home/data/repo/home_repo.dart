import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<BookModel>>> fetchNewsetBooks();
  Future<Either<String, List<BookModel>>> fetchFeaturedBooks();
}
