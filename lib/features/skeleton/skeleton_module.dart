

import 'package:get_it/get_it.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_provider.dart';
import 'dart:developer' as dev;
final sl = GetIt.instance;

Future<void> initSkeletonModule() async {
  dev.log("initSkeletonModule");
  //SkeletonProvider
  sl.registerLazySingleton<SkeletonProvider>(() => SkeletonProvider());
}