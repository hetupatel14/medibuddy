// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../widgets/reusable_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/-login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.teal[400],
        child: Container(
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            color: Colors.white),
            margin: const EdgeInsets.only(top:50),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  logoWidget("assets/images/login1.png"),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20,),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 5),
                  const Text("Let's login and continue to explore"),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Email", Icons.email_outlined, false,
                      _emailTextController, Icons.keyboard_alt_outlined),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Password", Icons.lock_person_outlined,
                      true, _passwordTextController, Icons.remove_red_eye_outlined,),
                  const SizedBox(
                  height: 5,
                ),
                  forgotPassword(context),
                  loginButtons(context, "Sign In", () {}),
                  Row(
                    children: const [
                      Expanded(child: Divider(color: Colors.black,)),
                      Text("  You can Connect with  ", style: TextStyle(color: Colors.grey),),
                      Expanded(child: Divider(color: Colors.black)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
