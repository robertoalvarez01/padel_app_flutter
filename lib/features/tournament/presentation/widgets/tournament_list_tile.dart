import 'package:flutter/material.dart';

class TournamentListTile extends StatelessWidget {
  const TournamentListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.info});

  final String title;
  final String subtitle;
  final String info;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: size.width * .0, horizontal: size.width * .04),
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: size.width * .01),
        child: Text(
          title,
          style: theme.textTheme.labelMedium,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: theme.textTheme.labelSmall
                ?.copyWith(color: theme.colorScheme.tertiary),
          ),
          Text(
            info,
            style: theme.textTheme.labelSmall
                ?.copyWith(color: theme.colorScheme.tertiary),
          )
        ],
      ),
    );
  }
}
