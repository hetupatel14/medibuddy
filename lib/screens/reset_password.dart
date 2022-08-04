import 'package:flutter/material.dart';

import '../widgets/reusable_widgets.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Reset password",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    logoReset("assets/images/password.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Create New Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Your new password should be different from previously used passwords",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("New password", Icons.lock_outlined, true,
                        _passwordTextController, Icons.remove_red_eye_outlined),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField(
                        "Confirm password",
                        Icons.lock_person_outlined,
                        true,
                        _passwordTextController,
                        Icons.remove_red_eye_outlined),
                    const SizedBox(
                      height: 10,
                    ),
                    loginButtons(context, "Create", () {}),
                  ],
                ))),
      ),
    );
  }
}

Widget logoReset(String imagename) {
  return Container(
      margin: EdgeInsets.only(top: 60),
      child: Image.asset(imagename,
          fit: BoxFit.fitWidth, width: 240, height: 240));
}
