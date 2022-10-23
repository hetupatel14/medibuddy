import 'package:flutter/material.dart';
import 'package:medibuddy/models/doctors.dart';
import 'package:medibuddy/widgets/lists/doctor_list.dart';
import 'package:provider/provider.dart';
import '../../services/doctor_service.dart';

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
        ),
        body: Center(
          child: DoctorList(),
        ),
      ),
    );
  }
}
