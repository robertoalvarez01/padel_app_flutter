import 'package:flutter/material.dart';

class SkeletonAppBar extends StatelessWidget {
  const SkeletonAppBar({super.key, required this.appBarTitle, required this.icon});

  final String appBarTitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .04),
      width: size.width,
      height: size.width * .185,
      child: Row(
        children: [
          Text(appBarTitle, style: theme.textTheme.headlineMedium,),
          Spacer(),
          icon
        ],
      ),
    );
  }
}