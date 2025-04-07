import 'package:flutter/material.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_provider.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_navigation_bar_item.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'package:provider/provider.dart';

class SkeletonNavigationBar extends StatelessWidget {
  const SkeletonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final skeletonProvider = Provider.of<SkeletonProvider>(context);
    final t = Provider.of<TranslationProvider>(context);

    return NavigationBar(
      selectedIndex: skeletonProvider.currentPage,
      onDestinationSelected: (newIndex) =>
          skeletonProvider.currentPage = newIndex,
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
          itemText: t.t('bookings'),
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
