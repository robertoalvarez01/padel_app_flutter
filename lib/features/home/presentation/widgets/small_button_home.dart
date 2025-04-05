import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'package:provider/provider.dart';

class SmallButtonHome extends StatelessWidget {
  const SmallButtonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    final t = Provider.of<TranslationProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .05),
      width: size.width * .85 / 2,
      height: size.width * .5 / 2 - size.width * .025,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            Icons.whatshot_outlined
          ),
          Text(t.t('my-points')),
          const Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}