import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key, required this.assetPath, required this.itemText, this.isFirst = false});

  final String assetPath;
  final String itemText; 
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(right: size.width * .03, left: isFirst ? size.width * .04 : 0),
      width: size.width * .6,
      height: size.width * .5,
      child: Column(
        children: [
          Container(
            width: size.width * .6,
            height: size.width * .34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width * .02),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(size.width * .02),
              child: Image.asset(assetPath, fit: BoxFit.cover,),
            ),
          ),
          SizedBox(height: size.width * .03,),
          Text(itemText, style: theme.textTheme.labelMedium,)

        ],
      ),
    );
  }
}