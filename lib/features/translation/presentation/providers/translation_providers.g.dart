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
String _$translationControllerHash() =>
    r'5f6f8fb9bb95fdcd12f1737d349af5c9cca2b274';

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
