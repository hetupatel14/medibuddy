import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hospitals.dart';
import './hospital_tile.dart';

class HospitalList extends StatefulWidget {
  @override
  _HospitalListState createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  @override
  Widget build(BuildContext context) {
    final hospitals = Provider.of<List<Hospitals>>(context);

    return ListView.builder(
      itemCount: hospitals.length,
      itemBuilder: (context, index) {
        return HospitalTile(hospital: hospitals[index]);
      },
    );
  }
}