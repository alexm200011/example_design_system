import 'package:example_design_system/atoms/separated.dart';
import 'package:example_design_system/molecules/card_tile.dart';
import 'package:flutter/material.dart';

import 'models.dart';

class ShowInfoTemplate extends StatelessWidget {
  final String title;
  final List<ShowInfoDetail> listOfShowInfoDetail;
  const ShowInfoTemplate({super.key, required this.title, required this.listOfShowInfoDetail});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(title: Text(title)),
       body: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: ListView.separated(
          itemBuilder: (_, index) {
            final ShowInfoDetail _showInfoDetail = listOfShowInfoDetail[index];
            return GestureDetector(
              onTap: ()=> Navigator.of(context).popAndPushNamed(_showInfoDetail.componentPage),
              child: ExampleCardTile(
                    path: _showInfoDetail.pathImage,
                    title: _showInfoDetail.componentTitle,
                    id: _showInfoDetail.componentDescription),
              );
            },
            separatorBuilder: (context, _) =>
                const Separated(nSeparated: 0.5),
            itemCount: listOfShowInfoDetail.length),
      ),
    );
  }
}