import 'package:flutter/material.dart';
import 'bloodbanks.dart';
import 'package:provider/provider.dart';
import './bloodbank_tile.dart';


class BloodBankList extends StatefulWidget {
  @override
  _BloodBankListState createState() => _BloodBankListState();
}

class _BloodBankListState extends State<BloodBankList> {
  @override
  Widget build(BuildContext context) {
    final bloodbanks = Provider.of<List<BloodBanks>>(context);

    return ListView.builder(
      itemCount: bloodbanks.length,
      itemBuilder: (context, index) {
        return BloodBankTile(bloodbank: bloodbanks[index]);
      },
    );
  }
}