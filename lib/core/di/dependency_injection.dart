import 'package:chefio/core/network/api_sevices.dart';
import 'package:chefio/core/network/dio_factory.dart';
import 'package:chefio/feature/log_in/data/repo/login_repo.dart';
import 'package:chefio/feature/log_in/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
