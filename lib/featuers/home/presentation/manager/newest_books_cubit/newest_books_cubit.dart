import 'package:bloc/bloc.dart';
import 'package:booking_app/featuers/home/data/repo/home_repo_impl.dart';
import 'package:booking_app/featuers/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:meta/meta.dart';

class NewestBooksCubit extends Cubit<NewsetBooksState> {
  final HomeRepoImpl homeRepoImpl;
  NewestBooksCubit(this.homeRepoImpl) : super(NewBooksInitial());
  getNewsBooks() async {
    emit(NewBooksLoading());
    var data = await homeRepoImpl.fetchNewsetBooks();
    data.fold((error) {
      emit(NewBooksError(error));
    }, (newBooks) {
      emit(NewBooksSuccess(newBooks));
    });
  }
}
