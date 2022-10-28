import 'package:flutter/material.dart';
import 'package:medibuddy/models/caretakers.dart';
import 'package:medibuddy/widgets/tiles/caretaker_tile.dart';
import 'package:provider/provider.dart';

class CaretakerList extends StatefulWidget {
  @override
  _CaretakerListState createState() => _CaretakerListState();
}

class _CaretakerListState extends State<CaretakerList> {
  @override
  Widget build(BuildContext context) {
    final caretakers = Provider.of<List<Caretakers>>(context);

    return ListView.builder(
      itemCount: caretakers.length,
      itemBuilder: (context, index) {
        return CaretakerTile(caretaker: caretakers[index]);
      },
    );
  }
}
