import 'package:flutter/material.dart';

class LaboratoriesScreen extends StatelessWidget {
  const LaboratoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.black,) ,body: Center(child: Text("Laboratories"),),);
  }
}
