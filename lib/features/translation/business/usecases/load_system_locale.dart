
import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';

class LoadSystemLocaleUseCase{
  final TranslationRepository translationRepository;

  LoadSystemLocaleUseCase(this.translationRepository);

  Future<Locale> call() async {
    return await translationRepository.loadSystemLocale();
  }
}