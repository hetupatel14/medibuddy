import 'package:flutter/material.dart';

class CareTakerScreen extends StatelessWidget {
  const CareTakerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.black,) ,body: Center(child: Text("Care Takers"),),);
  }
}
