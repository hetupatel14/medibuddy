import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addCaretaker extends StatefulWidget {
  const addCaretaker({super.key});

  @override
  State<addCaretaker> createState() => _addCaretakerState();
}

class _addCaretakerState extends State<addCaretaker> {
  final CollectionReference doctorCollection =
      FirebaseFirestore.instance.collection('caretakers');
  final _formKey = new GlobalKey<FormState>();

  String name = "";
  String degree = "";
  int rating = 0;
  String email = "";
  String phoneNumber = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Add a Caretaker")),
      body: Container(
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Full Name"),
                    validator: (val) => val!.isEmpty ? "Enter a name" : null,
                    onChanged: (val) {
                      setState(() => name = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Degree"),
                    validator: (val) => val!.isEmpty ? "Enter a degree" : null,
                    onChanged: (val) {
                      setState(() => degree = val);
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
                    decoration: InputDecoration(hintText: "Email"),
                    validator: (val) => val!.isEmpty ? "Enter an email" : null,
                    onChanged: (val) {
                      setState(() => email = val);
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
                        print("email: ${email}");
                        print("degree: ${degree}");
                        print("Rating: ${rating}");
                        print("Phone number: ${phoneNumber}");

                        return await doctorCollection.doc().set({
                          'name': name,
                          'email': email,
                          'degree': degree,
                          'rating': rating,
                          'phoneNumber': phoneNumber,
                        });
                      })
                ],
              ))),
    );
  }
}
