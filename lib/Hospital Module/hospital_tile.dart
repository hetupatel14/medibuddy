import 'package:flutter/material.dart';
import 'hospitals.dart';

class HospitalTile extends StatelessWidget {
  final Hospitals hospital;
  const HospitalTile({required this.hospital});

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
            title: Text(hospital.name, style: TextStyle(fontWeight: FontWeight.bold),),
            // subtitle: Text('Title: ${hospital.specialities} Location: ${hospital.location}\n Phone: ${hospital.phoneNumber} \n Rating: ${hospital.rating}  '),
            // trailing: Text(
            //     "\n Rooms Available: ${hospital.roomsAvailable} \n emergencyOPDAvailable: ${hospital.emergencyOPDAvailable}"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Title: ", style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${hospital.specialities}')
                  ],
                ),
                Row(
                  children: [
                    Text('Location: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${hospital.location}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Phone: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${hospital.phoneNumber}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Rating: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${hospital.rating}')
                  ],
                ),
                Row(
                  children: [
                    Text('Rooms Available: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${hospital.roomsAvailable}')
                  ],
                ),
                Row(
                  children: [
                    Text('Emergency OPD service available: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${hospital.emergencyOPDAvailable}')
                  ],
                )
              ],
            ),
            
          ),
        ));
  }
}
