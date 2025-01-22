
import 'package:booking_app/featuers/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../network/api_service.dart';

final getIt = GetIt.instance;

void SetupLocator(){
  getIt.registerSingleton<ApiService>(ApiService(
    Dio(),
  ),);
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
   getIt.get<ApiService>(),
  ),);
}
