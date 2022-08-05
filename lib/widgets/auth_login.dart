import 'package:flutter/material.dart';

import '../screens/homescreen.dart';
import '../widgets/reusable_widgets.dart';
import '../screens/reset_password.dart';
import '../screens/signup_screen.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin(void Function(String username, String password) submitAuthLogin, {Key? key, required this.submitLogin}) : super(key: key);

  final void Function(String username, String password) submitLogin;

  @override
  State<AuthLogin> createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  final _formKey = GlobalKey<FormState>();

  var _userName = '';
  var _userPassword = '';

  void trySubmit() {
    final isValid = _formKey.currentState!.validate();
    // FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();
      widget.submitLogin(_userName, _userPassword);
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
                  // reusableUsernameFields(Icons.person),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 4) {
                              return 'Username must be atleast 4 characters long.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black38,
                            ),
                            labelText: "Enter Username",
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
                            _userName = value!;
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
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // reusableUsernameFields(
                  //     Icons.lock_person_outlined, "Enter password"),
                  const SizedBox(
                    height: 5,
                  ),
                  forgotPassword(context),
                  loginButtons(context, "Sign In", () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const HomeScreen()));
                    // }),
                    trySubmit();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
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
                      "Sign In with Google",
                      () {}),
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
