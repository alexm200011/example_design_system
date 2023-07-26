import 'package:flutter/material.dart';

class ExampleImage extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;

  const ExampleImage({super.key, required this.url, required this.widthImage, required this.heightImage});

  @override
  Widget build(BuildContext context) {
    Widget exapleImage = Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
    
    return exapleImage;
  }
}