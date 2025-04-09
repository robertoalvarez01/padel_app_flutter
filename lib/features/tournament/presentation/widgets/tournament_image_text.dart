import 'package:flutter/material.dart';

class TournamentImageAndText extends StatelessWidget {
  const TournamentImageAndText(
      {super.key,
      required this.assetPath,
      required this.itemText,
      required this.itemTitle});
  final String assetPath;
  final String itemTitle;
  final String itemText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(size.width * .04),
      height: size.width * .75,
      child: Stack(
        children: [
          Container(
            height: size.width * .75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * .02)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(size.width * .02),
              child: Image.asset(
                assetPath,
                fit: BoxFit.cover,
                color: Colors.black.withValues(alpha: .4),
                colorBlendMode: BlendMode.hardLight
              ),
            ),
          ),
          Positioned(
            bottom: size.width * .04,
            right: size.width * .04,
            child: SizedBox(
              width: size.width * .65,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    itemTitle,
                    textAlign: TextAlign.end,
                    style: theme.textTheme.titleLarge,
                  ),
                  Text(
                    itemText,
                    textAlign: TextAlign.end,
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
