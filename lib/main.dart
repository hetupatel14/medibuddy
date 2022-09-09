import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medibuddy/introduction_screen.dart';
import 'package:medibuddy/screens/login%20screens/phone_screen.dart';
import 'package:medibuddy/widgets/bottom_navigation_bar.dart';
import './screens/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medi Buddy',
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (ctx) =>
      //    BottomNavigationScreen(),
      //   HomeScreen.routeName: (ctx) => HomeScreen(),
      // },
    );
  }
}

Future<void> init() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
