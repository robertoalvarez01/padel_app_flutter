

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';

class InitializeLocaleUseCase{
  final TranslationRepository translationRepository;

  InitializeLocaleUseCase(this.translationRepository);

  Future<bool> call() async {
    final platformLocale = Platform.localeName;
    await translationRepository.loadLocale(Locale(platformLocale));
    return true;
  }
}