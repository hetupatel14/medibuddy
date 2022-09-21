import 'package:flutter/material.dart';

class MedicalShopScreen extends StatelessWidget {
  const MedicalShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text("Medical Shops"),
      ),
    );
  }
}
