import 'package:flutter/material.dart';
import 'package:medibuddy/screens/login%20screens/email_screen.dart';
import 'package:medibuddy/screens/login%20screens/register.dart';

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
