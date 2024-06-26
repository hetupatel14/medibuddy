import 'package:flutter/material.dart';
import 'package:medibuddy/Patient%20module/widgets/tile/patient_tile.dart';
import 'package:provider/provider.dart';
import 'package:medibuddy/Patient%20module/models/patients.dart';

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  @override
  Widget build(BuildContext context) {
    final patients = Provider.of<List<Patients>>(context);

    return ListView.builder(
      itemCount: patients.length,
      itemBuilder: (context, index) {
        return PatientTile(patient: patients[index]);
      },
    );
  }
}
