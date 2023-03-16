import 'package:flutter/material.dart';
import 'package:medibuddy/Laboratory%20Module/models/laboratories.dart';
import 'package:provider/provider.dart';
import '../services/laboratory_service.dart';
import '../widgets/list/laboratory_list.dart';


class LaboratoryScreen extends StatelessWidget {
  const LaboratoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Laboratories>?>.value(
      initialData: [],
      value: LaboratoryService().laboratories,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
       title: Text('Laboratories', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: LaboratoryList(),
        ),
      ),
    );
  }
}
