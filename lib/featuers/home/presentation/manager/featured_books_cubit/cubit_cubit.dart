import 'package:bloc/bloc.dart';
import 'package:booking_app/featuers/home/data/repo/home_repo_impl.dart';
import 'package:booking_app/featuers/home/presentation/manager/featured_books_cubit/cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImpl) : super(FeaturedBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  getAllBooks() async {
    emit(FeaturedBooksLoading());
    var value = await homeRepoImpl.fetchFeaturedBooks();
    value.fold((error) {
      emit(FeaturedBooksError(error));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
