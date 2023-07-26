import 'package:example_design_system/atoms/asset_image.dart';
import 'package:example_design_system/atoms/separated.dart';
import 'package:flutter/material.dart';

class SuccessTrx extends StatelessWidget {
  const SuccessTrx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Success Transaction',
      )),
      body: ListView(
        children: [
          const Separated(nSeparated: 0.2),
          Center(
            child: Text(
            'We have happy announcement🥳',
            style: Theme.of(context).textTheme.headlineMedium,
          )),
          const Separated(nSeparated: 0.2),
          const Center(
              child: ExampleAssetImage(
                  path: 'assets/images/success.png', widthImage: 200)),
          const Separated(nSeparated: 0.2),
          Center(
              child: Text(
            'your transaction was completed successfully',
            style: Theme.of(context).textTheme.headlineMedium,
          )),
        ],
      ),
    );
  }
}
