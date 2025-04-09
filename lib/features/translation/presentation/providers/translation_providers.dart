import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';
import 'package:padel_app/features/translation/data/repositories/translation_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'translation_providers.g.dart';

@Riverpod(keepAlive: true)
TranslationRepository translationRepository(Ref ref) {
  final translationRepo = TranslationRepositoryImpl();
  return translationRepo;
}

@Riverpod(keepAlive: true)
class TranslationController extends _$TranslationController {
  late TranslationRepository _repo;
  late Locale _locale;

  @override
  Future<void> build() async {
    _repo = ref.watch(translationRepositoryProvider);
    _locale = await _repo.loadSystemLocale();
  }

  Future<void> changeLocale(Locale newLocale) async {
    state = const AsyncLoading();
    _locale = newLocale;
    await _repo.loadLocale(newLocale);
    state = const AsyncData(null);
  }

  String t(String key) {
    return _repo.translate(key);
  }
}