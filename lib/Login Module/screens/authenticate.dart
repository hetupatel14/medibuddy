import 'package:flutter/material.dart';
import './email_screen.dart';
import 'package:medibuddy/Login%20Module/screens/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return EmailScreen(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
