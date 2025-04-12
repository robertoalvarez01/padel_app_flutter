// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translationRepositoryHash() =>
    r'b12d18095e58fab2bb3f98a524e3bf90902bc857';

/// See also [translationRepository].
@ProviderFor(translationRepository)
final translationRepositoryProvider = Provider<TranslationRepository>.internal(
  translationRepository,
  name: r'translationRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$translationRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TranslationRepositoryRef = ProviderRef<TranslationRepository>;
String _$changeLocaleUseCaseHash() =>
    r'75142f54ecfef84b96698d9642ec97ec935c2fb2';

/// See also [changeLocaleUseCase].
@ProviderFor(changeLocaleUseCase)
final changeLocaleUseCaseProvider =
    AutoDisposeProvider<ChangeLocaleUseCase>.internal(
  changeLocaleUseCase,
  name: r'changeLocaleUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$changeLocaleUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ChangeLocaleUseCaseRef = AutoDisposeProviderRef<ChangeLocaleUseCase>;
String _$loadSystemLocaleHash() => r'9d22b4805042a78272b0a788ac6c5c7dbb355f01';

/// See also [loadSystemLocale].
@ProviderFor(loadSystemLocale)
final loadSystemLocaleProvider =
    AutoDisposeProvider<LoadSystemLocaleUseCase>.internal(
  loadSystemLocale,
  name: r'loadSystemLocaleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loadSystemLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LoadSystemLocaleRef = AutoDisposeProviderRef<LoadSystemLocaleUseCase>;
String _$translateHash() => r'5438975652de33a728796635771b57aec9a4cb34';

/// See also [translate].
@ProviderFor(translate)
final translateProvider = AutoDisposeProvider<TranslateUseCase>.internal(
  translate,
  name: r'translateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$translateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TranslateRef = AutoDisposeProviderRef<TranslateUseCase>;
String _$translationControllerHash() =>
    r'148fac3d5be35cf423bc47454fe6a50b8bca029c';

/// See also [TranslationController].
@ProviderFor(TranslationController)
final translationControllerProvider =
    AsyncNotifierProvider<TranslationController, void>.internal(
  TranslationController.new,
  name: r'translationControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$translationControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TranslationController = AsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
