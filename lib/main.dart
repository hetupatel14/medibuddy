import 'package:flutter/material.dart';
import 'package:medibuddy/screens/Feature%20Detail%20Screens/add_bloodbank_screen.dart';
import 'package:medibuddy/screens/Feature%20Detail%20Screens/add_pharmacy_screen.dart';
import 'package:medibuddy/screens/Feature%20Screens/laboratories_screen.dart';
import 'package:medibuddy/screens/Feature%20Screens/pharmacy_screen.dart';
import 'package:medibuddy/services/auth.dart';
import 'package:medibuddy/wrapper.dart';
import 'package:provider/provider.dart';
import './screens/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:medibuddy/models/user.dart';
import 'screens/Feature Detail Screens/add_laboratory_screen.dart';
import 'screens/Feature Screens/blood_banks_screen.dart';


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
        home: PharmacyScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
        },
      ),
    );
  }
}
