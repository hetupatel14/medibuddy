import 'package:flutter/material.dart';

import '../widgets/reusable_widgets.dart';
import '../screens/homescreen.dart';
import '../screens/signup_screen.dart';

class AuthSignup extends StatefulWidget {
  const AuthSignup({Key? key}) : super(key: key);

  @override
  State<AuthSignup> createState() => _AuthSignupState();
}

class _AuthSignupState extends State<AuthSignup> {
  final _formKey = GlobalKey<FormState>();

  var _userEmail = '';
  var _userPassword = '';
  var _userConfirmPassword = '';

  void trySubmit() {
    final isValid = _formKey.currentState!.validate();
    // FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();
      print(_userEmail);
      print(_userPassword);
      print(_userConfirmPassword);
    }
  }

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
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'please enter a valid email address';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.black38,
                            ),
                            labelText: "Enter Email",
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.9)),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.teal[50],
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                          onSaved: (value) {
                            _userEmail = value!;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 7) {
                              return 'Password must be atleast 7 characters long.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.black38,
                            ),
                            labelText: "Enter Password",
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.9)),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.teal[50],
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                          onSaved: (value) {
                            _userPassword = value!;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 7) {
                              return 'Password must be atleast 7 characters long.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_person_outlined,
                              color: Colors.black38,
                            ),
                            labelText: "Confirm Password",
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.9)),
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Colors.teal[50],
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none)),
                          ),
                          onSaved: (value) {
                            _userConfirmPassword = value!;
                          },
                        ),
                      ],
                    ),
                  ),

                  // reusableEmailFields(Icons.abc),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // reusableTextField(
                  //   "Enter Password",
                  //   Icons.lock_outlined,
                  //   true,
                  //   _passwordTextController,
                  //   Icons.remove_red_eye_outlined,
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // reusableTextField(
                  //   "Confirm Password",
                  //   Icons.lock_person_outlined,
                  //   true,
                  //   _passwordTextController,
                  //   Icons.remove_red_eye_outlined,
                  // ),
                  const SizedBox(
                    height: 5,
                  ),
                  loginButtons(context, "Sign Up", () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                    trySubmit();
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
                  googleSignIn(
                      context,
                      const Image(
                        image: AssetImage("assets/images/google.png"),
                        width: 30,
                        height: 30,
                      ),
                      "Sign Up with Google",
                      () {}),
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
      const Text("Sign Up with Phone Number? ",
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
