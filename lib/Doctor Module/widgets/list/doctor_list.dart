import 'package:flutter/material.dart';
import 'package:medibuddy/Doctor%20Module/models/doctors.dart';
import 'package:medibuddy/Doctor%20Module/widgets/tile/doctor_tile.dart';
import 'package:provider/provider.dart';

class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    final doctors = Provider.of<List<Doctors>>(context);

    return ListView.builder(
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return DoctorTile(doctor: doctors[index]);
      },
    );
  }
}
