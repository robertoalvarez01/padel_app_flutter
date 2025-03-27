import 'dart:ui';
import '../repositories/translation_repository.dart';

class ChangeLocaleUseCase {
  final TranslationRepository translationService;

  ChangeLocaleUseCase(this.translationService);

  Future<bool> call(Locale locale) async {
    await translationService.loadLocale(locale);
    return true;
  }
}
