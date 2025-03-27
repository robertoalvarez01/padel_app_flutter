import 'package:flutter/material.dart';
import 'package:padel_app/features/home/presentation/widgets/big_button_home.dart';
import 'package:padel_app/features/home/presentation/widgets/long_button_home.dart';
import 'package:padel_app/features/home/presentation/widgets/small_button_home.dart';
import 'package:padel_app/features/translation/presentation/providers/translation_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    final t = Provider.of<TranslationProvider>(context);

    return SingleChildScrollView(
      child: SizedBox(
        width: size.width,
        child: Column(
          children: [
            Container(
              width: size.width * 0.9,
              margin: EdgeInsets.only(top: size.width * .15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${t.t('hi')}, Roberto',
                    style: theme.textTheme.headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    t.t('what-do-you-want-to-do-today'),
                    style: theme.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.width * .1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .05),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      BigButtonHome(),
                      const Spacer(),
                      SizedBox(
                        width: size.width * .85 / 2,
                        height: size.width * .5,
                        child: Column(
                          children: [
                            SmallButtonHome(),
                            const Spacer(),
                            SmallButtonHome(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.width * .05),
                    child: LongButtonHome(size: size),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      BigButtonHome(),
                      const Spacer(),
                      BigButtonHome(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




