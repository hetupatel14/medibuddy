import 'package:flutter/material.dart';
import 'package:medibuddy/widgets/auth_signup.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  static const routeName = '/-signup';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final TextEditingController _emailTextController = TextEditingController();
  // final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthSignup()
    );
  }
}

// Row signInOption(BuildContext context) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       const Text("Sign Up with Phone Number? ",
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
