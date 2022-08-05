// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../widgets/auth_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/-login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final TextEditingController _emailTextController = TextEditingController();
  // final TextEditingController _passwordTextController = TextEditingController();

  void _submitAuthLogin(String username, String password) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthLogin(_submitAuthLogin, submitLogin: (String username, String password) {},)
    );
  }
}

// Row signUpOption(BuildContext context) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       const Text("Don't have an account? ",
//           style: TextStyle(color: Colors.black)),
//       GestureDetector(
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => const SignUp()));
//         },
//         child: const Text(
//           "Sign Up",
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//       ),
//     ],
//   );
// }

// Widget forgotPassword(BuildContext context) {
//   return Container(
//     width: MediaQuery.of(context).size.width,
//     height: 35,
//     alignment: Alignment.bottomRight,
//     child: TextButton(
//         child: const Text(
//           "Forgot Password ?",
//           style: TextStyle(
//             color: Colors.blue,
//           ),
//           textAlign: TextAlign.right,
//         ),
//         onPressed: () {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => ResetPassword()));
//         }),
//   );
// }
