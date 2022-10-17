
import 'package:flutter/material.dart';
import 'package:medibuddy/screens/login%20screens/authenticate.dart';

import 'package:medibuddy/services/auth.dart';

import 'package:medibuddy/wrapper.dart';
import 'package:provider/provider.dart';
import './screens/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:medibuddy/models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<regUser?>.value(
      
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medi Buddy',
        theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black),
        primarySwatch: Colors.blue,
        ),
        home: Wrapper(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
        },
      ),
    );
  }
}
