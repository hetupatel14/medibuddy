import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addLaboratory extends StatefulWidget {
  const addLaboratory({super.key});

  @override
  State<addLaboratory> createState() => _addLaboratoryState();
}

class _addLaboratoryState extends State<addLaboratory> {
  final CollectionReference laboratoryCollection =
      FirebaseFirestore.instance.collection('laboratories');
  final _formKey = new GlobalKey<FormState>();

  String name = "";
  String location = "";
  int rating = 0;
  String specialities = "";
  String phoneNumber = "";
  String homeTestAvailable = "No";
  List tests = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Add a Laboratory")),
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
                  Text(
                    "Home Testing Available:",
                    textAlign: TextAlign.left,
                  ),
                  RadioListTile(
                      title: Text("Yes"),
                      value: "Yes",
                      groupValue: homeTestAvailable,
                      onChanged: (value) {
                        setState(() {
                          homeTestAvailable = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text("No"),
                      value: "No",
                      groupValue: homeTestAvailable,
                      onChanged: (value) {
                        setState(() {
                          homeTestAvailable = value.toString();
                        });
                      }),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Tests(Write each test seperated by comma)"),
                    validator: (val) =>
                        val!.isEmpty ? "Enter atleast one test" : null,
                    onChanged: (val) {
                      setState(() => tests = val.split(","));
                    },
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                      child: Text("Submit"),
                      onPressed: () async {
                        print("name: ${name}");
                        print("location: ${location}");
                        print("degree: ${specialities}");
                        print("Rating: ${rating}");
                        print("Phone number: ${phoneNumber}");
                        print("homeTestavailable: ${homeTestAvailable}");
                        print("Tests: ${tests}");

                        return await laboratoryCollection.doc().set({
                          'name': name,
                          'location': location,
                          'specialities': specialities,
                          'rating': rating,
                          'homeTestAvailable': homeTestAvailable,
                          'tests': tests,
                          'phoneNumber': phoneNumber,
                        });
                      })
                ],
              ))),
    );
  }
}
