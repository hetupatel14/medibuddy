import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addBloodbanks extends StatefulWidget {
  const addBloodbanks({super.key});

  @override
  State<addBloodbanks> createState() => _addBloodbanksState();
}

class _addBloodbanksState extends State<addBloodbanks> {
  final CollectionReference bloodBanksCollection =
      FirebaseFirestore.instance.collection('bloodbanks');
  final _formKey = new GlobalKey<FormState>();

  String name = "";
  String location = "";
  int rating = 0;
  String phoneNumber = "";
  List bloodGroupsAvailable = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Add a BloodBank")),
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
                  TextFormField(
                    decoration: InputDecoration(
                        hintText:
                            "Blood Groups Available(Write each bloodgroup seperated by comma)"),
                    validator: (val) =>
                        val!.isEmpty ? "Enter atleast one bloodgroup" : null,
                    onChanged: (val) {
                      setState(() => bloodGroupsAvailable = val.split(","));
                    },
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                      child: Text("Submit"),
                      onPressed: () async {
                        print("name: ${name}");
                        print("location: ${location}");
                        print("Rating: ${rating}");
                        print("Phone number: ${phoneNumber}");
                        print("bloodGroupsAvailable: ${bloodGroupsAvailable}");

                        return await bloodBanksCollection.doc().set({
                          'name': name,
                          'location': location,
                          'rating': rating,
                          'bloodGroupsAvailable': bloodGroupsAvailable,
                          'phoneNumber': phoneNumber,
                        });
                      })
                ],
              ))),
    );
  }
}
