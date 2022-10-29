import 'package:flutter/material.dart';
import 'package:medibuddy/models/laboratories.dart';
import 'package:provider/provider.dart';
import '../../services/laboratory_service.dart';
import '../../widgets/lists/laboratory_list.dart';

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
        ),
        body: Center(
          child: LaboratoryList(),
        ),
      ),
    );
  }
}
