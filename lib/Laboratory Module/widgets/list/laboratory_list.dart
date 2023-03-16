import 'package:flutter/material.dart';
import 'package:medibuddy/Laboratory%20Module/models/laboratories.dart';
import 'package:provider/provider.dart';
import '../tile/laboratory_tile.dart';

class LaboratoryList extends StatefulWidget {
  @override
  _LaboratoryListState createState() => _LaboratoryListState();
}

class _LaboratoryListState extends State<LaboratoryList> {
  @override
  Widget build(BuildContext context) {
    final laboratories = Provider.of<List<Laboratories>>(context);

    return ListView.builder(
      itemCount: laboratories.length,
      itemBuilder: (context, index) {
        return LaboratoryTile(laboratory: laboratories[index]);
      },
    );
  }
}
