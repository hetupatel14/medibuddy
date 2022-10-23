import 'package:flutter/material.dart';
import 'package:medibuddy/models/patients.dart';

class PatientTile extends StatelessWidget {
  final Patients patient;
  const PatientTile({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.brown,
            ),
            title: Text(patient.name),
            subtitle: Text('Disease: ${patient.disease}'),
            trailing: Text(
                "Phone: ${patient.phone}\n Medicine: ${patient.medicines}"),
          ),
        ));
  }
}
