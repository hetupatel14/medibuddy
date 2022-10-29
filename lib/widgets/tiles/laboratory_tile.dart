import 'package:flutter/material.dart';
import 'package:medibuddy/models/laboratories.dart';

class LaboratoryTile extends StatelessWidget {
  final Laboratories laboratory;
  const LaboratoryTile({required this.laboratory});

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
            title: Text(laboratory.name),
            subtitle: Text('Title: ${laboratory.specialities} Location: ${laboratory.location}\n Phone: ${laboratory.phoneNumber} \n Rating: ${laboratory.rating}  '),
            trailing: Text(
                "\n Home Test Available: ${laboratory.homeTestAvailable} \n Tests: ${laboratory.tests}"),
          ),
        ));
  }
}
