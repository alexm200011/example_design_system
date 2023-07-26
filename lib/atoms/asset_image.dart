import 'package:flutter/material.dart';

class ExampleAssetImage extends StatelessWidget {
  final String path;
  final double widthImage;
  
  const ExampleAssetImage({super.key, required this.path, required this.widthImage});

  @override
  Widget build(BuildContext context) {
    Widget exampleAssetImage = Image.asset(
      path,
      width: widthImage,
      height: widthImage,
    );
    return exampleAssetImage;
  }
}