import 'package:example_design_system/foundation/sizes.dart';
import 'package:flutter/material.dart';

class Separated extends StatelessWidget {
  final double nSeparated;
  
  const Separated({super.key, required this.nSeparated});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nSeparated*ExampleSizesFoundation.baseSepareted,
    );
  }
}