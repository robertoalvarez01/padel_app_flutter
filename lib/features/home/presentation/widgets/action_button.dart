import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActionButtonHome extends StatelessWidget {
  const ActionButtonHome(
      {super.key, required this.assetPath, required this.actionText});

  final String assetPath;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(size.width * .04),
      decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: theme.colorScheme.onPrimaryContainer)),
      child: Row(
        children: [
          SvgPicture.asset(
            assetPath,
            height: size.width * .065,
            width: size.width * .065,
            colorFilter: ColorFilter.mode(
                theme.colorScheme.secondary, BlendMode.srcATop),
          ),
          SizedBox(width: size.width * .02,),
          SizedBox(
            width: size.width * .26,
            child: Text(
              actionText,
              maxLines: 2,
              style: theme.textTheme.labelMedium
                  ?.copyWith(fontWeight: FontWeight.bold,),
            ),
          )
        ],
      ),
    );
  }
}
