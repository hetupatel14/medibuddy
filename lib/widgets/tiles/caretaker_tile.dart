import 'package:flutter/material.dart';
import 'package:medibuddy/models/caretakers.dart';

class CaretakerTile extends StatelessWidget {
  final Caretakers caretaker;
  const CaretakerTile({required this.caretaker});

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
            title: Text(caretaker.name),
            subtitle: Text('Title: ${caretaker.degree}'),
            trailing: Text(
                "E-mail: ${caretaker.email}\n Phone: ${caretaker.phoneNumber} \n Rating: ${caretaker.rating}"),
          ),
        ));
  }
}
