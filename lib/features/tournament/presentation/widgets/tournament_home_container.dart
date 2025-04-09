import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_app_bar.dart';
import 'package:padel_app/features/tournament/presentation/widgets/tournament_image_text.dart';
import 'package:padel_app/features/tournament/presentation/widgets/tournament_list_view.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_providers.dart';

class TournamentHomeContainer extends ConsumerWidget {
  const TournamentHomeContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final t = ref.read(translationControllerProvider.notifier);
    return Stack(
      children: [
        Positioned(
          top: size.width * .185,
          bottom: 0,
          left: 0,
          right: 0,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: size.width * .1,
                  child: Center(
                    child: Text("Filter Pills"),
                  ),
                ),
                TournamentImageAndText(
                  assetPath: 'assets/images/tournament.webp',
                  itemText:
                      'Here you can find the best tournament for you. You can modify the filters to refine your search.',
                  itemTitle: t.t('tournaments'),
                ),
                TournamentListView(),
              ],
            ),
          ),
        ),
        _getAppBar(size, t),
      ],
    );
  }

  Positioned _getAppBar(Size size, TranslationController t) {
    return Positioned(
      top: 0,
      height: size.width * .185,
      child: SkeletonAppBar(
        appBarTitle: t.t('tournaments'),
        icon: SvgPicture.asset(
          'assets/icons/filter.svg',
          width: size.width * .06,
          height: size.width * .06,
        ),
      ),
    );
  }
}
