import 'dart:ui';

abstract class TranslationRepository {
  String translate(String key);
  Future<void> loadLocale(Locale locale);
  Future<Locale> loadSystemLocale();
  Locale get currentLocale;
}
