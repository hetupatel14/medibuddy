import 'package:flutter/material.dart';
import 'package:medibuddy/screens/homescreen.dart';
import 'package:medibuddy/widgets/otp.dart';
import 'package:medibuddy/widgets/reusable_widgets.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Enter",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Verification Code",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(
                  height: 20,
                ),
                otpUi(context),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "We sent a One-Time Password to your phone number via SMS.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: resendCode(context),
                ),
                SizedBox(
                  height: 10,
                ),
                loginButtons(context, "Verify", () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreen.routeName, (route) => false);
                })
              ],
            ),
          ),
        ),
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

Row resendCode(BuildContext context) {
  return Row(
    children: [
      const Text(
        "Didn't receive any code?  ",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: const Text(
          "Resend Code",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    ],
  );
}
