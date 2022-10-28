import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addHospital extends StatefulWidget {
  const addHospital({super.key});

  @override
  State<addHospital> createState() => _addHospitalState();
}

class _addHospitalState extends State<addHospital> {
  final CollectionReference doctorCollection =
      FirebaseFirestore.instance.collection('hospitals');
  final _formKey = new GlobalKey<FormState>();

  bool asBool(dynamic val) {
    val = val.toString();
    if (val == "true")
      return true;
    else
      return false;
  }

  String name = "";
  String location = "";
  int rating = 0;
  String specialities = "";
  String phoneNumber = "";
  String roomsAvailable = "No";
  String emergencyOPDAvailable = "No";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Add a Hospital")),
      body: Container(
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Name"),
                    validator: (val) => val!.isEmpty ? "Enter a name" : null,
                    onChanged: (val) {
                      setState(() => name = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Specialities"),
                    validator: (val) =>
                        val!.isEmpty ? "Enter a speciality" : null,
                    onChanged: (val) {
                      setState(() => specialities = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Rating"),
                    validator: (val) => val!.isEmpty ? "Enter a rating" : null,
                    onChanged: (val) {
                      setState(() => rating = int.parse(val));
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Location"),
                    validator: (val) =>
                        val!.isEmpty ? "Enter a Location" : null,
                    onChanged: (val) {
                      setState(() => location = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Phone number"),
                    validator: (val) =>
                        val!.isEmpty ? "Enter a phone number" : null,
                    onChanged: (val) {
                      setState(() => phoneNumber = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  Text("Rooms Available:", textAlign: TextAlign.left,),
                  RadioListTile(
                      title: Text("Yes"),
                      value: "Yes",
                      groupValue: roomsAvailable,
                      onChanged: (value) {
                        setState(() {
                          roomsAvailable = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text("No"),
                      value: "No",
                      groupValue: roomsAvailable,
                      onChanged: (value) {
                        setState(() {
                          roomsAvailable = value.toString();
                        });
                      }),
                      SizedBox(height: 20.0),
                  Text("Emergency OPD Available:", textAlign: TextAlign.left,),
                  RadioListTile(
                      title: Text("Yes"),
                      value: "Yes",
                      groupValue: emergencyOPDAvailable,
                      onChanged: (value) {
                        setState(() {
                          emergencyOPDAvailable= value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text("No"),
                      value: "No",
                      groupValue: emergencyOPDAvailable,
                      onChanged: (value) {
                        setState(() {
                          emergencyOPDAvailable = value.toString();
                        });
                      }),
                  ElevatedButton(
                      child: Text("Submit"),
                      onPressed: () async {
                        print("name: ${name}");
                        print("location: ${location}");
                        print("degree: ${specialities}");
                        print("Rating: ${rating}");
                        print("Phone number: ${phoneNumber}");
                        print("Room: ${roomsAvailable}");
                        print(
                            "emergencyOPDAvialable: ${emergencyOPDAvailable}");
                        return await doctorCollection.doc().set({
                          'name': name,
                          'location': location,
                          'specialities': specialities,
                          'rating': rating,
                          'roomsAvailable': roomsAvailable,
                          'emergencyOPDAvailable': emergencyOPDAvailable,
                          'phoneNumber': phoneNumber,
                        });
                      })
                ],
              ))),
    );
  }
}
