import 'package:flutter/material.dart';

import '../widgets/reusable_widgets.dart';
import './homescreen.dart';
import './signup_screen.dart';
import './reset_password.dart';

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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              color: Colors.white),
          margin: const EdgeInsets.only(top: 35),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  logoWidget("assets/images/login1.png"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
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
                    height: 10,
                  ),
                  reusableTextField(
                    "Enter Password",
                    Icons.lock_person_outlined,
                    true,
                    _passwordTextController,
                    Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  forgotPassword(context),
                  loginButtons(context, "Sign In", () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
                  Row(
                    children: const [
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                      )),
                      Text(
                        "  You can Connect with  ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(child: Divider(color: Colors.black)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  googleSignIn(context, Image.asset("assets/images/google.png"),
                      "Sign In with Google", () {}),
                  signUpOption(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Row signUpOption(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have an account? ",
          style: TextStyle(color: Colors.black)),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SignUp()));
        },
        child: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Widget forgotPassword(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 35,
    alignment: Alignment.bottomRight,
    child: TextButton(
        child: const Text(
          "Forgot Password ?",
          style: TextStyle(
            color: Colors.blue,
          ),
          textAlign: TextAlign.right,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ResetPassword()));
        }),
  );
}
