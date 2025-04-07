import 'package:flutter/material.dart';
import 'package:padel_app/features/home/presentation/widgets/action_button.dart';

class ActionsBox extends StatelessWidget {
  const ActionsBox({super.key, required this.boxTitle});
  final String boxTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * .04, vertical: size.width * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            boxTitle,
            style: theme.textTheme.headlineLarge,
          ),
          GridView(
            padding: EdgeInsets.only(top: size.width * .07),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.33,
              crossAxisSpacing: size.width * .04,
              mainAxisSpacing: size.width * .04,
            ),
            children: [
              ActionButtonHome(
                assetPath: 'assets/icons/ball.svg',
                actionText: 'Find a Match',
              ),
              ActionButtonHome(
                assetPath: 'assets/icons/team.svg',
                actionText: 'Join a Team',
              ),
              ActionButtonHome(
                assetPath: 'assets/icons/tournament.svg',
                actionText: 'Tournament',
              ),
            ],
          )
        ],
      ),
    );
  }
}
