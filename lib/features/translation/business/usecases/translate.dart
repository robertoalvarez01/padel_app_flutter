
import 'package:padel_app/features/translation/business/repositories/translation_repository.dart';

class TranslateUseCase{
  final TranslationRepository translationRepository;
  TranslateUseCase(this.translationRepository);

  String call(String key){
    return translationRepository.translate(key);
  }

}