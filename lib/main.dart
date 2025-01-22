import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/utils/service_locator.dart';
import 'package:booking_app/featuers/home/data/repo/home_repo_impl.dart';
import 'package:booking_app/featuers/home/presentation/manager/featured_books_cubit/cubit_cubit.dart';
import 'package:booking_app/featuers/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SetupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..getAllBooks()),
          BlocProvider(
              create: (context) =>
                  NewestBooksCubit(getIt.get<HomeRepoImpl>())..getNewsBooks())
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark()
              .copyWith(scaffoldBackgroundColor: Color(0xff100B20)),
        ));
  }
}
