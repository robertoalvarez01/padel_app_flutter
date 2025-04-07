import 'package:flutter/material.dart';
import 'package:padel_app/features/home/presentation/widgets/carousel_item.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      height: size.width * .75,
      padding: EdgeInsets.symmetric(vertical: size.width * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * .04),
            child: Text('Highlights', style: theme.textTheme.headlineLarge,),
          ),
          Spacer(),
          SizedBox(
            width: size.width,
            height: size.width * .5,
            child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
              CarouselItem(assetPath: 'assets/images/first.webp', itemText: 'Boost Your Skills with Pro Coaching', isFirst: true),
              CarouselItem(assetPath: 'assets/images/second.webp', itemText: 'Explore Premier Padel Venues',),
              CarouselItem(assetPath: 'assets/images/first.webp', itemText: 'Boost Your Skills with Pro Coaching',),
              CarouselItem(assetPath: 'assets/images/second.webp', itemText: 'Boost Your Skills with Pro Coaching',),
              
             ], 
            ),
          )
        ],
      ),
    );
  }
}