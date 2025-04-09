import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_providers.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_navigation_bar.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_scaffold.dart';

class SkeletonPage extends ConsumerWidget {
  const SkeletonPage({super.key});

  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSkeletonPage = ref.watch(curretSkeletonPageProvider);

    return SkeletonScaffold(
      bottomNavigationBar: const SkeletonNavigationBar(),
      body: currentSkeletonPage,
    );
  }
}