import 'package:flutter/material.dart';
// import 'package:medibuddy/models/bloodbanks.dart';
import 'package:medibuddy/models/pharamcies.dart';
import 'package:medibuddy/services/pharmacy_service.dart';
import 'package:provider/provider.dart';
import '../../widgets/lists/pharmacy_list.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Pharmacies>?>.value(
      initialData: [],
      value: PharmacyService().pharmacies,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
        title: Text('Medical Shops', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: PharmacyList(),
        ),
      ),
    );
  }
}
