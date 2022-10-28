import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/caretakers.dart';
import '../../services/caretaker_service.dart';
import '../../widgets/lists/caretaker_list.dart';

class CareTakerScreen extends StatelessWidget {
  const CareTakerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Caretakers>?>.value(
      initialData: [],
      value: CaretakerService().caretakers,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: CaretakerList(),
        ),
      ),
    );
  }
}
