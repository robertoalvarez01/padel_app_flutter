import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';
import 'package:padel_app/features/translation/business/usecases/change_locale.dart';
import 'package:padel_app/features/translation/business/usecases/load_system_locale.dart';
import 'package:padel_app/features/translation/business/usecases/translate.dart';
import 'package:padel_app/features/translation/data/repositories/translation_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'translation_providers.g.dart';

@Riverpod(keepAlive: true)
TranslationRepository translationRepository(Ref ref) {
  final translationRepo = TranslationRepositoryImpl();
  return translationRepo;
}

@riverpod
ChangeLocaleUseCase changeLocaleUseCase(Ref ref) {
  return ChangeLocaleUseCase(ref.watch(translationRepositoryProvider));
}

@riverpod
LoadSystemLocaleUseCase loadSystemLocale(Ref ref) {
  return LoadSystemLocaleUseCase(ref.watch(translationRepositoryProvider));
}

@riverpod
TranslateUseCase translate(Ref ref) {
  return TranslateUseCase(ref.watch(translationRepositoryProvider));
}

@Riverpod(keepAlive: true)
class TranslationController extends _$TranslationController {
  late Locale _locale;

  @override
  Future<void> build() async {
    _locale = await ref.watch(loadSystemLocaleProvider).call();
  }

  Future<void> changeLocale(Locale newLocale) async {
    state = const AsyncLoading();
    await ref.watch(changeLocaleUseCaseProvider).call(newLocale);
    _locale = newLocale;
    state = const AsyncData(null);
  }

  String t(String key) {
    return ref.watch(translateProvider).call(key);
  }
}