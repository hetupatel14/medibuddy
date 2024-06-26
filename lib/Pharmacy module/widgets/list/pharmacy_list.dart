import 'package:flutter/material.dart';
import '../../models/pharmacies.dart';
import 'package:provider/provider.dart';
import '../tile/pharmacy_tile.dart';

class PharmacyList extends StatefulWidget {
  @override
  _PharmacyListState createState() => _PharmacyListState();
}

class _PharmacyListState extends State<PharmacyList> {
  @override
  Widget build(BuildContext context) {
    final pharmacies = Provider.of<List<Pharmacies>>(context);

    return ListView.builder(
      itemCount: pharmacies.length,
      itemBuilder: (context, index) {
        return PharmacyTile(pharmacies: pharmacies[index]);
      },
    );
  }
}