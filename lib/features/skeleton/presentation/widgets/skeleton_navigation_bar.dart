import 'package:flutter/material.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_provider.dart';
import 'package:provider/provider.dart';

class SkeletonNavigationBar extends StatelessWidget {
  const SkeletonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final skeletonProvider = Provider.of<SkeletonProvider>(context);

    return NavigationBar(
      selectedIndex: skeletonProvider.currentPage,
      onDestinationSelected: (newIndex) => skeletonProvider.goToPage(newIndex),
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
        NavigationDestination(icon: Icon(Icons.sports_tennis), label: 'Jugar'),
        NavigationDestination(
            icon: Icon(Icons.favorite_border), label: 'Favoritos'),
        NavigationDestination(
            icon: Icon(Icons.person_2_rounded), label: 'Perfil'),
      ],
    );
  }
}
