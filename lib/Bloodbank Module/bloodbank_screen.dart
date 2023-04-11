import 'package:flutter/material.dart';
import 'bloodbanks.dart';
import './bloodbank_service.dart';
import 'package:provider/provider.dart';
import './bloodbank_list.dart';

class BloodBankScreen extends StatelessWidget {
  const BloodBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<BloodBanks>?>.value(
      initialData: [],
      value: BloodBankService().bloodbanks,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Text('Blood Banks', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: BloodBankList(),
        ),
      ),
    );
  }
}
