import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:padel_app/features/home/presentation/widgets/home_carousel.dart';
import 'package:padel_app/features/home/presentation/widgets/actions_box.dart';
import 'package:padel_app/features/skeleton/presentation/widgets/skeleton_app_bar.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonAppBar(
                  appBarTitle: 'PadelApp',
                  icon: SvgPicture.asset('assets/icons/settings.svg', width: size.width * .06, height: size.width * .06,),
                ),
                HomeCarousel(),
                ActionsBox(boxTitle: 'For Players',),
                ActionsBox(boxTitle: 'For Organizers',),
                ActionsBox(boxTitle: 'For Clubs',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}