import 'package:flutter/material.dart';
import 'package:medibuddy/models/bloodbanks.dart';
import 'package:medibuddy/models/laboratories.dart';

class BloodBankTile extends StatelessWidget {
  final BloodBanks bloodbank;
  const BloodBankTile({required this.bloodbank});

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
            title: Text(bloodbank.name),
            subtitle: Text(
                'Location: ${bloodbank.location}\n Phone: ${bloodbank.phoneNumber} \n Rating: ${bloodbank.rating}  '),
            trailing: Text("\n Blood Groups Available: ${bloodbank.bloodGroupsAvailable}"),
          ),
        ));
  }
}
