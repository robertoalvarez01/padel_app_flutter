import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_navigation_bar_item.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_providers.dart';

class SkeletonNavigationBar extends ConsumerWidget {
  const SkeletonNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final t = Provider.of<TranslationProvider>(context);
    final t = ref.read(translationControllerProvider.notifier);
    return NavigationBar(
      destinations: [
        SkeletonNavigationBarItem(
          index: 0,
          assetPath: 'assets/icons/home.svg',
          itemText: t.t('home'),
        ),
        SkeletonNavigationBarItem(
          index: 1,
          assetPath: 'assets/icons/tournament.svg',
          itemText: t.t('tournaments'),
        ),
        SkeletonNavigationBarItem(
          index: 2,
          assetPath: 'assets/icons/booking.svg',
          itemText: t.t('booking'),
        ),
        SkeletonNavigationBarItem(
          index: 3,
          assetPath: 'assets/icons/profile.svg',
          itemText: t.t('profile'),
        ),
      ],
    );
  }
}
