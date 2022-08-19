import 'package:flutter/material.dart';
import 'package:medibuddy/widgets/reusable_widgets.dart';
import 'otp_screen.dart';
import '../../widgets/phone_number.dart';

class PhoneRegister extends StatefulWidget {
  const PhoneRegister({Key? key}) : super(key: key);

  @override
  State<PhoneRegister> createState() => _PhoneRegisterState();
}

class _PhoneRegisterState extends State<PhoneRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Verification",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
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
                    logoReset("assets/images/verification.jpg"),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Don't Worry",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Enter your Phone number and we will send you an SMS verification code",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    phoneNumber(context),
                    SizedBox(
                      height: 10,
                    ),
                    loginButtons(context, "Send", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    })
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
