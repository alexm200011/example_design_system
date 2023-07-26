import 'package:example_design_system/foundation/sizes.dart';
import 'package:example_design_system/foundation/spacing.dart';
import 'package:example_design_system/molecules/card_tile.dart';
import 'package:flutter/material.dart';

class ExampleListOfCards extends StatelessWidget {
  final List<ExampleCardTile> listCards;
  const ExampleListOfCards({super.key, required this.listCards});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: ExampleSizesFoundation.sizeCard,
      child: ListView.separated(
        itemBuilder: (contex, index) => listCards[index],
        itemCount: listCards.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: ExampleSpacingFoundation.spaceBetweenCards),
      ),
    );
  }
}
