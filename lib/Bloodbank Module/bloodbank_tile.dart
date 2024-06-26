 import 'package:flutter/material.dart';
import 'bloodbanks.dart';
// import 'package:medibuddy/models/laboratories.dart';

class BloodBankTile extends StatelessWidget {
  final BloodBanks bloodbank;
  const BloodBankTile({required this.bloodbank});

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
            title: Text(bloodbank.name, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Blood Groups Available: ", style: TextStyle(fontWeight: FontWeight.w800),),
                        Text('${bloodbank.bloodGroupsAvailable}')

                      ],
                    ),
                    
                  ],
                ),
                Row(
                  children: [
                    Text('Location: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${bloodbank.location}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Phone: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${bloodbank.phoneNumber}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Rating: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${bloodbank.rating}')
                  ],
                )
              ],
            ),
          ),
        ));
  }
}