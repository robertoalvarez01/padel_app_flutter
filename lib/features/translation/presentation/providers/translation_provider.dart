
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';

class TranslationProvider extends ChangeNotifier {
  
  final TranslationRepository _repository;

  TranslationProvider(this._repository);

  String t(String key) => _repository.translate(key);

  Future<void> setLocale(Locale locale) async {
    await _repository.loadLocale(locale);
    notifyListeners();
  }

  Locale get currentLocale => _repository.currentLocale;
}