import 'package:flutter/material.dart';
import 'package:medibuddy/services/auth.dart';
import '../../widgets/reusable_widgets.dart';

class EmailScreen extends StatefulWidget {
  final Function toggleView;
  const EmailScreen({super.key, required this.toggleView});

  @override
  State<EmailScreen> createState() => _EmailScreen();
}

class _EmailScreen extends State<EmailScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text(
          "Sign In to MediBuddy using E-mail",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // actions: <Widget>[
        //   ElevatedButton.icon(
        //     onPressed: () {
        //       widget.toggleView();
        //     },
        //     icon: Icon(Icons.person),
        //     label: Text("Sign Up"),
        //   )
        // ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
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
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 5),
                const Text(
                  "Let's login and continue to explore",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.pink,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink),
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "Enter email",
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.w600)),
                          validator: (val) =>
                              val!.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() => email = val);
                          },
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black,
                              prefixIcon: Icon(
                                Icons.lock_person_outlined,
                                color: Colors.pink,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pink),
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: "Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Enter Password",
                              labelStyle: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.w600)),
                          validator: (val) => val!.length < 6
                              ? 'Enter a password longer than 6 characters'
                              : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90)),
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                dynamic result =
                                    await _auth.signInWithEmailAndPassword(
                                        email, password);
                                if (result == null) {
                                  setState(() =>
                                      error = 'Email or password is invalid');
                                }
                              }
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.pink;
                                  }
                                  return Colors.black;
                                }),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.pink),
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0),
                        ),
                        Row(
                          children: [
                            Expanded(child: Divider(
                              color: Colors.pink,
                            )),
                            Text('  Dont have an account?  ', style: TextStyle(color: Colors.white),),
                            Expanded(child: Divider(color: Colors.pink,))
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90)),
                          child: ElevatedButton(
                            onPressed: () {
                              widget.toggleView();
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.pink;
                                  }
                                  return Colors.black;
                                }),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.pink),
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
