import 'package:booking_app/core/network/api_service.dart';
import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:booking_app/featuers/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<String, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      List<BookModel> books = [];
      var data = await apiService.get(
          endPoint: 'books/v1/volumes?Filtering=free-ebooks&q=subject :flutter&maxResults=40');
      for (var i in data['items']) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<BookModel>>> fetchNewsetBooks() async {
    try {
      List<BookModel> books = [];
      var data = await apiService.get(
          endPoint: 'books/v1/volumes?Filtering=free-ebooks&q=flutter&Sorting&maxResults=40');
      for (var i in data['items']) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }
}
