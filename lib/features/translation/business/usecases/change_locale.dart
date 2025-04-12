import 'dart:ui';
import '../repositories/translation_repository.dart';

class ChangeLocaleUseCase {
  final TranslationRepository translationRepository;

  ChangeLocaleUseCase(this.translationRepository);

  Future<bool> call(Locale locale) async {
    await translationRepository.loadLocale(locale);
    return true;
  }
}
