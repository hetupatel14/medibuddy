import 'package:flutter/material.dart';

class MyDoctorScreen extends StatelessWidget {
  const MyDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Text("My Doctor"),
      ),
    );
  }
}
