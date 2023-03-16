import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy/Login%20Module/models/user.dart';
import 'package:medibuddy/Login%20Module/screens/authenticate.dart';
import 'package:medibuddy/Navigation%20Bar%20Module/widgets/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  static const routeName = '/-wrapper';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<regUser?>(context);
    print(user?.uid);

    if (user == null) {
      return Authenticate();
    } else {
      return BottomNavigationScreen();
    }
  }
}
