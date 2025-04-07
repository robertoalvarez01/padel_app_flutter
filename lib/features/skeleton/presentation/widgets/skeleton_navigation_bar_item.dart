import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:padel_app/features/skeleton/presentation/providers/skeleton_provider.dart';
import 'package:provider/provider.dart';

class SkeletonNavigationBarItem extends StatelessWidget {
  const SkeletonNavigationBarItem(
      {super.key,
      required this.index,
      required this.assetPath,
      required this.itemText});

  final int index;
  final String assetPath;
  final String itemText;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SkeletonProvider>(context);
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => controller.currentPage != index
          ? controller.currentPage = index
          : null,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.asset(
              assetPath,
              colorFilter: controller.currentPage == index
                  ? ColorFilter.mode(Colors.white, BlendMode.srcATop)
                  : null,
            ),
            SizedBox(
              height: size.width * .015,
            ),
            Text(
              itemText,
              style: theme.navigationBarTheme.labelTextStyle?.resolve(
                  controller.currentPage == index ? {WidgetState.selected} : {}),
            )
          ],
        ),
      ),
    );
  }
}
