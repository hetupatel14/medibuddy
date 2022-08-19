import 'package:flutter/material.dart';
import 'package:medibuddy/widgets/feature_grid.dart';
import './profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/-home';

  // const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Home", style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            },
            icon: const CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            FeatureGirdDesign(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: "Settings")
        ],
        backgroundColor: Colors.grey[50],
        selectedItemColor: Colors.black,
        elevation: 2,
      ),
    );
  }
}
