import 'package:flutter/material.dart';
import 'package:medibuddy/Patient%20module/models/patients.dart';

class PatientTile extends StatelessWidget {
  final Patients patient;
  const PatientTile({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.pink[200], borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/google.png'),
              backgroundColor: Colors.transparent,
            ),
            title: Text(patient.name, style: TextStyle(fontWeight: FontWeight.bold),),
            // subtitle: Text('Disease: ${patient.disease}'),
            // trailing: Text(
            //     "Phone: ${patient.phone}\n Medicine: ${patient.medicines}"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Disease: ", style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${patient.disease}')
                  ],
                ),
                Row(
                  children: [
                    Text('Phone: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${patient.phone}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Medicines: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${patient.medicines}')
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
