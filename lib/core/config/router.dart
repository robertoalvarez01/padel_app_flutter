import 'package:flutter/material.dart';
import 'package:padel_app/core/config/routes.dart';
import 'package:padel_app/features/skeleton/presentation/pages/skeleton_page.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    AppRoutes.skeleton: (context) => SkeletonPage(),
    // Routes.signIn: (context) => const SignInView(),
    // Routes.home: (context) => const HomeView(),
    // Routes.offline: (context) => const OfflineView(),
    // Routes.favorites: (context) => const FavoritesView(),
    // Routes.profile: (context) => const ProfileView(),
  };
}