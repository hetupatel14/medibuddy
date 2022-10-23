import 'package:flutter/material.dart';
import 'package:medibuddy/models/doctors.dart';

class DoctorTile extends StatelessWidget {
  final Doctors doctor;
  const DoctorTile({required this.doctor});

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
            title: Text(doctor.name),
            subtitle: Text('Title: ${doctor.title}'),
            trailing: Text(
                "E-mail: ${doctor.email}\n Specialization: ${doctor.specialization}"),
          ),
        ));
  }
}
