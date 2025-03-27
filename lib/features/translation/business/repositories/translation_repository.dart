import 'dart:ui';

abstract class TranslationRepository {
  String translate(String key);
  Future<void> loadLocale(Locale locale);
  Locale get currentLocale;
}
