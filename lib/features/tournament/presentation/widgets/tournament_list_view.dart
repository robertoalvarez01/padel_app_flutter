import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:padel_app/features/tournament/presentation/widgets/tournament_list_tile.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_providers.dart';

class TournamentListView extends ConsumerWidget {
  const TournamentListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final t = ref.read(translationControllerProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * .04, vertical: size.width * .04),
          child: Text(
            t.t('near-tournaments'),
            textAlign: TextAlign.start,
            style: theme.textTheme.headlineLarge,
          ),
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(bottom: size.width * .04),
          children: [
            TournamentListTile(title: 'Club Atlético de Pilar', subtitle: 'Today at 16:00 hs', info: 'Intermediate - 2 spots left'),
            TournamentListTile(title: 'Manza Padel', subtitle: 'Today at 20:00 hs', info: 'Advanced - 5 spots left'),
            TournamentListTile(title: 'Asociación Deportiva Francesa', subtitle: 'Tomorrow at 13:30 hs', info: 'Beginner - 6 spots left'),
            TournamentListTile(title: 'Area 45 Cardales', subtitle: 'Saturday 12/04 at 17:00 hs', info: 'Intermediate - 2 spots left'),
            TournamentListTile(title: 'Club Atlético de Pilar', subtitle: 'Saturday 12/04 at 18:40 hs', info: 'Advanced - 2 spots left'),
            TournamentListTile(title: 'Roby Gattiker Padel Center', subtitle: 'Saturday 12/04 at 19:00 hs', info: 'Advanced - 3 spots left'),
            TournamentListTile(title: 'Roby Gattiker Padel Center', subtitle: 'Sunday 13/04 at 20:00 hs', info: 'Beginner - 3 spots left'),
            
          ],
        )
      ],
    );
  }
}
