import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addPharmacy extends StatefulWidget {
  const addPharmacy({super.key});

  @override
  State<addPharmacy> createState() => _addPharmacyState();
}

class _addPharmacyState extends State<addPharmacy> {
  final CollectionReference pharmacyCollection =
      FirebaseFirestore.instance.collection('pharmacies');
  final _formKey = new GlobalKey<FormState>();

  String name = "";
  String location = "";
  int rating = 0;
  String phoneNumber = "";
  String bloodGroupsAvailable = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Add a Pharmacy")),
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
                  ElevatedButton(
                      child: Text("Submit"),
                      onPressed: () async {
                        print("name: ${name}");
                        print("location: ${location}");
                        print("Rating: ${rating}");
                        print("Phone number: ${phoneNumber}");

                        return await pharmacyCollection.doc().set({
                          'name': name,
                          'location': location,
                          'rating': rating,
                          'phoneNumber': phoneNumber,
                        });
                      })
                ],
              ))),
    );
  }
}
