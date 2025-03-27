import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';

import 'dart:developer' as dev;

class TranslationRepositoryImpl implements TranslationRepository {
  TranslationRepositoryImpl(){
    loadLocale(_locale);
  }

  late Map<String, dynamic> _localizedStrings;
  Locale _locale = const Locale('en');

  @override
  Locale get currentLocale => _locale;

  @override
  Future<void> loadLocale(Locale locale) async {
    dev.log('loadLocale with ${locale.languageCode}');

    final path = 'assets/i18n/${locale.languageCode}.json';
    final jsonStr = await rootBundle.loadString(path);
    _localizedStrings = json.decode(jsonStr);
    _locale = locale;
  }

  @override
  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}
