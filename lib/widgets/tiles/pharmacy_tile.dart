import 'package:flutter/material.dart';
import 'package:medibuddy/models/pharamcies.dart';

class PharmacyTile extends StatelessWidget {
  final Pharmacies pharmacies;
  const PharmacyTile({required this.pharmacies});

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
            title: Text(pharmacies.name),
            subtitle: Text(
                'Location: ${pharmacies.location}\n Phone: ${pharmacies.phoneNumber} \n Rating: ${pharmacies.rating}  '),
          ),
        ));
  }
}
