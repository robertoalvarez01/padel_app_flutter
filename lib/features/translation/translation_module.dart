import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';
import 'package:padel_app/features/translation/data/repositories/translation_repository_impl.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'dart:developer' as dev;


final sl = GetIt.instance;
Future<void> initTranslationModule() async {
  dev.log("initTranslationModule");

  final repo = TranslationRepositoryImpl();
  await repo.loadLocale(const Locale('en'));

  //TranslationRepository
  sl.registerLazySingleton<TranslationRepository>(() => repo);

  //TranslationProvider
  sl.registerLazySingleton<TranslationProvider>(() => TranslationProvider(sl<TranslationRepository>()));

}
