import 'package:flutter/material.dart';

class BloodBankScreen extends StatelessWidget {
  const BloodBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.black,) ,body: Center(child: Text("Blood Banks"),),);
  }
}
