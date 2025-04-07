import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_app_bar.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'package:provider/provider.dart';

class TournamentHomePage extends StatelessWidget {
  const TournamentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final t = Provider.of<TranslationProvider>(context);
    return Stack(
      children: [
        Positioned(
          child: SkeletonAppBar(
            appBarTitle: t.t('tournaments'),
            icon: SvgPicture.asset(
              'assets/icons/filter.svg',
              width: size.width * .06,
              height: size.width * .06,
            ),
          ),
        ),
      ],
    );
  }
}
