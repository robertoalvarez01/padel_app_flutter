import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_providers.dart';

class SkeletonNavigationBarItem extends ConsumerWidget {
  const SkeletonNavigationBarItem(
      {super.key,
      required this.index,
      required this.assetPath,
      required this.itemText});

  final int index;
  final String assetPath;
  final String itemText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    final currentPage = ref.watch(skeletonPageIndexProvider);

    return GestureDetector(
      onTap: () => currentPage != index
          ? ref.read(skeletonPageIndexProvider.notifier).setPageIndex(index)
          : null,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.asset(
              assetPath,
              colorFilter: currentPage == index
                  ? ColorFilter.mode(Colors.white, BlendMode.srcATop)
                  : null,
            ),
            SizedBox(
              height: size.width * .015,
            ),
            Text(
              itemText,
              style: theme.navigationBarTheme.labelTextStyle
                  ?.resolve(currentPage == index ? {WidgetState.selected} : {}),
            )
          ],
        ),
      ),
    );
  }
}
