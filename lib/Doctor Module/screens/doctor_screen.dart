import 'package:flutter/material.dart';
import 'package:medibuddy/Doctor%20Module/models/doctors.dart';
import 'package:medibuddy/Doctor%20Module/widgets/list/doctor_list.dart';
import 'package:provider/provider.dart';
import '../services/doctor_service.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Doctors>?>.value(
      initialData: [],
      value: DoctorService().doctors,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Text('Doctors', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: DoctorList(),
        ),
      ),
    );
  }
}
