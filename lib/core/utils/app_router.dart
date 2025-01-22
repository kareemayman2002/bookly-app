import 'package:booking_app/featuers/home/data/models/book_model/book_model.dart';
import 'package:booking_app/featuers/home/presentation/views/book_details_view.dart';
import 'package:booking_app/featuers/home/presentation/views/home_view.dart';
import 'package:booking_app/featuers/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      // GoRoute(
      //   path: kSearchView,
      //   builder: (context, state) => const SearchView(),
      // ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: kBookDetailsView,
          builder: (context, state) {
          final bookModel = state.extra as BookModel;
            return BookDetailsView(bookModel: bookModel);
          }),
    ],
  );
}
