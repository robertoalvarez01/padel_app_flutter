import 'package:flutter/material.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_provider.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_navigation_bar.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_scaffold.dart';
import 'package:provider/provider.dart';

class SkeletonPage extends StatelessWidget {
  const SkeletonPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    final skeletonProvider = context.watch<SkeletonProvider>();

    return SkeletonScaffold(
      bottomNavigationBar: const SkeletonNavigationBar(),
      body: skeletonProvider.getSkeletonPage,
    );
  }
}