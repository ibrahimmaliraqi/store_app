import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store/Features/home/data/repos/home_repo_impl.dart';
import 'package:store/core/utils/app_services.dart';

final getIt = GetIt.instance;

void setupAppLocator() {
  getIt.registerSingleton<AppServices>(AppServices(Dio()));

  GetIt.I.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<AppServices>()),
  );
}
