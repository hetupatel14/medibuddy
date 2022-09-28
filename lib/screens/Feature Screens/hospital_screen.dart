import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.black,) ,body: Center(child: Text("Hospitals"),),);
  }
}
