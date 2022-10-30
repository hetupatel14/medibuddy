import 'package:flutter/material.dart';
import 'package:medibuddy/models/doctors.dart';

class DoctorTile extends StatelessWidget {
  final Doctors doctor;
  const DoctorTile({required this.doctor});

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
            title: Text(doctor.name, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Title: ", style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${doctor.title}')
                  ],
                ),
                Row(
                  children: [
                    Text('Email: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${doctor.email}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Phone: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${doctor.specialization}'),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
