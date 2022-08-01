import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/-homescreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medi Buddy"),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.amber,
        ),
      ),
    );
  }
}
