import 'package:example_design_system/atoms/asset_image.dart';
import 'package:example_design_system/foundation/foundation_colors.dart';
import 'package:example_design_system/foundation/sizes.dart';
import 'package:flutter/material.dart';

class ExampleActionableCard extends StatelessWidget {
  final String routeAssetImage;
  final String title;
  final VoidCallback actionCard;
  
  const ExampleActionableCard({super.key, required this.routeAssetImage, required this.title, required this.actionCard});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionCard,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ExampleColorsFoundation.cardCircularBgColor
        ),
        width: ExampleSizesFoundation.sizeCircleAccionableCard,
        height: ExampleSizesFoundation.sizeCircleAccionableCard,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExampleAssetImage(path: routeAssetImage, widthImage: 100),
            Text(title,style: Theme.of(context).textTheme.headlineMedium,)
          ],
        ),
      ),
    );
  }
}