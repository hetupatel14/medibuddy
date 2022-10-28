import 'package:flutter/material.dart';
import 'package:medibuddy/models/hospitals.dart';

class HospitalTile extends StatelessWidget {
  final Hospitals hospital;
  const HospitalTile({required this.hospital});

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
            title: Text(hospital.name),
            subtitle: Text('Title: ${hospital.specialities} Location: ${hospital.location}\n Phone: ${hospital.phoneNumber} \n Rating: ${hospital.rating}  '),
            trailing: Text(
                "\n Rooms Available: ${hospital.roomsAvailable} \n emergencyOPDAvailable: ${hospital.emergencyOPDAvailable}"),
          ),
        ));
  }
}
