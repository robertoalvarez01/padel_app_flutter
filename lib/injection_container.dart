import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:padel_app/core/connection/network_info.dart';

final sl = GetIt.instance; // sl = service locator

Future<void> initDependencies() async {
  //Data connection checker
  sl.registerLazySingleton<DataConnectionChecker>(() => DataConnectionChecker());

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl<DataConnectionChecker>()));

  // Dio
  sl.registerLazySingleton<Dio>(() => Dio());
}
