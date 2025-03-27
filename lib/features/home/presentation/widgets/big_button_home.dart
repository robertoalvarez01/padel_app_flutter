import 'package:flutter/material.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'package:provider/provider.dart';

class BigButtonHome extends StatelessWidget {
  const BigButtonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final t = Provider.of<TranslationProvider>(context);
    return Container(
      width: size.width * .85 / 2,
      height: size.width * .5,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.search_outlined,
            size: size.width * .15,
          ),
          Text(t.t('search-court'))
        ],
      ),
    );
  }
}