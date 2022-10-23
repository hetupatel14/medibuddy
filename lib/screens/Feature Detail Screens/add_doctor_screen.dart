import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medibuddy/services/doctor_service.dart';
import 'package:flutter/material.dart';

class addDoctor extends StatefulWidget {
  const addDoctor({super.key});

  @override
  State<addDoctor> createState() => _addDoctorState();
}

class _addDoctorState extends State<addDoctor> {
  final CollectionReference doctorCollection =
      FirebaseFirestore.instance.collection('doctors');
  final _formKey = new GlobalKey<FormState>();

  String name = "";
  String title = "";
  String specialization = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Add a doctor")),
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
                    decoration: InputDecoration(hintText: "Specialization"),
                    validator: (val) =>
                        val!.isEmpty ? "Enter a specialization" : null,
                    onChanged: (val) {
                      setState(() => specialization = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Title"),
                    validator: (val) => val!.isEmpty ? "Enter a title" : null,
                    onChanged: (val) {
                      setState(() => title = val);
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
                  ElevatedButton(
                      child: Text("Submit"),
                      onPressed: () async {
                        print("name: ${name}");
                        print("email: ${email}");
                        print("Title: ${title}");
                        print("Specialization: ${specialization}");

                        return await doctorCollection.doc().set({
                          'name': name,
                          'specialization': specialization,
                          'title': title,
                          'email': email,
                        });
                        
                      })
                ],
              ))),
    );
  }
}
