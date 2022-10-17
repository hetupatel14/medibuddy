import 'package:flutter/material.dart';
import 'package:medibuddy/screens/login%20screens/register.dart';
import 'package:medibuddy/services/auth.dart';

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
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("SignIn to MediBuddy using E-mail"),
        actions: <Widget>[
          ElevatedButton.icon(
            onPressed: () {
              widget.toggleView();
            },
            icon: Icon(Icons.person),
            label: Text("Sign Up"),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                
                SizedBox(height: 20.0),
                
                TextFormField(
                  decoration:InputDecoration(hintText: "Email"),
                  validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                   decoration:InputDecoration(hintText: "Password"),
                  validator: (val) => val!.length < 6
                      ? 'Enter a password longer than 6 characters'
                      : null,
                  obscureText: true,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        dynamic result = await _auth.signInWithEmailAndPassword(
                            email, password);
                        if (result == null) {
                          setState(() => error = 'Email or password is invalid');
                        }
                      }
                    },
                    child: Text("Sign In")),
                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                )
              ],
            )),
      ),
    );
  }
}
