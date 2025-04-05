import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'package:provider/provider.dart';

class LongButtonHome extends StatelessWidget {
  const LongButtonHome({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final t = Provider.of<TranslationProvider>(context);
    final theme = Theme.of(context);
    return Container(
      width: size.width * 9,
      height: size.width * .15,
      padding: EdgeInsets.symmetric(horizontal: size.width * .05),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            Icons.sports_baseball_outlined
          ),
          SizedBox(width: size.width * .025,),
          Text(t.t('play-now')),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}