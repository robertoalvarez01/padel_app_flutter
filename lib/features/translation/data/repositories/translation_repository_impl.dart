import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';

import 'dart:developer' as dev;

class TranslationRepositoryImpl implements TranslationRepository {
  TranslationRepositoryImpl();

  late Map<String, dynamic> _localizedStrings;
  late Locale _locale;

  @override
  Locale get currentLocale => _locale;

  @override
  Future<Locale> loadSystemLocale() async{
    final systemLocale = Locale(Platform.localeName.substring(0,2));
    await loadLocale(systemLocale);
    return systemLocale;
  }

  @override
  Future<void> loadLocale(Locale locale) async {
    dev.log('loadLocale with ${locale.languageCode}');

    final path = 'assets/i18n/${locale.languageCode}.json';
    dev.log('path $path');
    final jsonStr = await rootBundle.loadString(path);
    dev.log('jsonStr $jsonStr');
    _localizedStrings = json.decode(jsonStr);
    dev.log('_localizedStrings $jsonStr');
    _locale = locale;
  }

  @override
  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}
