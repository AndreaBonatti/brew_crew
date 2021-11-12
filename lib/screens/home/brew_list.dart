import 'package:brew_crew/models/brew.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'brew_tile.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    // final brews = Provider.of<QuerySnapshot?>(context);
    // // print(brews);
    // // print(brews?.docs);
    // for(var doc in brews!.docs){
    //   print(doc.data());
    // }

    final brews = Provider.of<List<Brew>>(context) ?? [];
    for (var brew in brews) {
      print(brew.name);
      print(brew.sugars);
      print(brew.strength);
    }

    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return BrewTile(brew: brews[index]);
      },
    );
  }
}
