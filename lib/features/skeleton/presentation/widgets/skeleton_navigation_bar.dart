import 'package:flutter/material.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_provider.dart';
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
      onDestinationSelected: (newIndex) => skeletonProvider.currentPage = newIndex,
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: t.t('home') ),
        NavigationDestination(icon: Icon(Icons.sports_tennis), label: t.t('play')),
        NavigationDestination(
            icon: Icon(Icons.favorite_border), label: t.t('favourites')),
        NavigationDestination(
            icon: Icon(Icons.person_2_rounded), label: t.t('profile')),
      ],
    );
  }
}
