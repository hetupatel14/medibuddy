import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/-home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medi Buddy"),
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.amber,
        ),
      ),
    );
  }
}
