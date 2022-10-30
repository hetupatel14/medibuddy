import 'package:flutter/material.dart';
import 'package:medibuddy/models/hospitals.dart';
// import 'package:medibuddy/models/patients.dart';
import 'package:medibuddy/services/hospital_service.dart';
// import 'package:medibuddy/widgets/lists/patient_list.dart';
// import 'package:medibuddy/services/patient_service.dart';
import 'package:provider/provider.dart';

import '../../widgets/lists/hospital_list.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hospitals>?>.value(
      initialData: [],
      value: HospitalService().hospitals,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
        title: Text('Hospitals', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: HospitalList(),
        ),
      ),
    );
  }
}
