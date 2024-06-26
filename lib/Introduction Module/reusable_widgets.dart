import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 230,
    height: 230,
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordtype,
    TextEditingController controller, IconData icon1) {
  return TextField(
    controller: controller,
    obscureText: isPasswordtype,
    enableSuggestions: !isPasswordtype,
    autocorrect: !isPasswordtype,
    cursorColor: Colors.black,
    style: const TextStyle(color: Colors.black),
    decoration: isPasswordtype
        ? InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black38,
            ),
            suffixIcon: Icon(icon1, color: Colors.black),
            labelText: text,
            labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.teal[50],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
          )
        : InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black38,
            ),
            labelText: text,
            labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.teal[50],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
          ),
    keyboardType: isPasswordtype
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container loginButtons(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      // ignore: sort_child_properties_last
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.black26;
          }
          return Colors.teal[400];
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
  );
}

Widget googleSignIn(
    BuildContext context, Image image, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: TextButton.icon(
      onPressed: () {
        onTap();
      },
      icon: image,
      label: Text(title,
          style: const TextStyle(
            color: Colors.black,
          )),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.black26;
          }
          return Colors.white;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(
                color: Colors.black, width: 0, style: BorderStyle.solid),
          ),
        ),
      ),
    ),
  );
}

Row signInOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Already have an account ? ",
        style: TextStyle(color: Colors.black),
      ),
      GestureDetector(
          onTap: () {},
          child: const Text("Sign In", style: TextStyle(color: Colors.blue))),
    ],
  );
}

Widget googleSignUp(Image image, Function onTap) {
  return Container(
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
    child: IconButton(
        onPressed: () {
          onTap();
        },
        icon: image,
  ),
  );
}

Widget phoneSignIn(BuildContext context, IconData icon, Function onTap) {
  return Container(
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
    child: IconButton(
        onPressed: () {
          onTap();
        },
        icon: Icon(Icons.call),
  ),
  );
}
