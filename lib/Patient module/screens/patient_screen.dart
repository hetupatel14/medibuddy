import 'package:flutter/material.dart';
import 'package:medibuddy/Patient%20module/models/patients.dart';
import 'package:medibuddy/Patient%20module/widgets/list/patient_list.dart';
import 'package:medibuddy/Patient%20module/services/patient_service.dart';
import 'package:provider/provider.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Patients>?>.value(
      initialData: [],
      value: PatientService().patients,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
       title: Text('Medical History', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: PatientList(),
        ),
      ),
    );
  }
}
