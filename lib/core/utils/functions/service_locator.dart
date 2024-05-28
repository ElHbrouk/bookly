import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/data_sorces/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sorces/home_remote_data_source.dart';
import 'package:bookly/features/home/data/repositories/home_repository_imp.dart';
import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;
void serviceLocator() {
  getIt.registerSingleton(ApiService(Dio()));
  getIt.registerSingleton<HomeRepository>(
    HomeRepositoryImp(
      homeRemoteDataSource:
          HomeRemoteDataSourceImpl(apiService: getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
