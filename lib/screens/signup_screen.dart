import 'package:flutter/material.dart';
import 'package:medibuddy/screens/login.dart';
import '../widgets/reusable_widgets.dart';
import '../screens/homescreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  static const routeName = '/-signup';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  logoWidget("assets/images/sigup.png"),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Let's Get Started!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 5),
                  const Text("Create an account to get all the features"),
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
                    Icons.lock_outlined,
                    true,
                    _passwordTextController,
                    Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  reusableTextField(
                    "Confirm Password",
                    Icons.lock_person_outlined,
                    true,
                    _passwordTextController,
                    Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  loginButtons(context, "Sign Up", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()));
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
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      googleSignUp(
                          const Image(
                            image: AssetImage("assets/images/google.png"),
                            width: 30,
                            height: 30,
                          ),
                          () {}),
                          Padding(padding: EdgeInsets.only(left: 10),),
                      phoneSignIn(context, Icons.call, () {}),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  signInOption(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Row signInOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account? ",
            style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: const Text(
            "Sign In",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }