import 'package:flutter/material.dart';
import 'package:medibuddy/models/laboratories.dart';

class LaboratoryTile extends StatelessWidget {
  final Laboratories laboratory;
  const LaboratoryTile({required this.laboratory});

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
            title: Text(laboratory.name, style: TextStyle(fontWeight: FontWeight.bold),),
            // subtitle: Text('Title: ${laboratory.specialities} Location: ${laboratory.location}\n Phone: ${laboratory.phoneNumber} \n Rating: ${laboratory.rating}  '),
            // trailing: Text(
            //     "\n Home Test Available: ${laboratory.homeTestAvailable} \n Tests: ${laboratory.tests}"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Title: ", style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${laboratory.specialities}')
                  ],
                ),
                Row(
                  children: [
                    Text('Location: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${laboratory.location}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Phone: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${laboratory.phoneNumber}'),
                  ],
                ),
                Row(
                  children: [
                    Text('Rating: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${laboratory.rating}')
                  ],
                ),
                Row(
                  children: [
                    Text('Home Tests available: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${laboratory.homeTestAvailable}')
                  ],
                ),
                Row(
                  children: [
                    Text('Tests: ', style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('${laboratory.tests}')
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
