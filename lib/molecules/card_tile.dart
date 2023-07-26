import 'package:example_design_system/atoms/asset_image.dart';
import 'package:example_design_system/foundation/foundation_colors.dart';
import 'package:flutter/material.dart';

class ExampleCardTile extends StatelessWidget {
  final String path;
  final String title;
  final String id;
  final double? height;
  const ExampleCardTile({super.key, required this.path, required this.title, required this.id, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 180,
      decoration: BoxDecoration(
        color: ExampleColorsFoundation.cardBgColor,
        borderRadius: BorderRadius.circular(21),   
      ),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.only(top: 21.0,left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExampleAssetImage(path: path, widthImage: 120),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 200,
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.only(left: 34, top: 21),
                  child: Text(id, style: Theme.of(context).textTheme.headlineMedium),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}