import 'package:flutter/material.dart';
import 'package:medibuddy/screens/profile_screen.dart';
import 'package:medibuddy/services/auth.dart';
import 'package:medibuddy/widgets/feature_grid.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/-home';

  // const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
    //     elevation: 0,
    //     iconTheme: const IconThemeData(color: Colors.black),
    //     title: Text(
    //       "Home",
    //       style: TextStyle(
    //           color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
    //     ),
    // actions: [
    //   IconButton(
    //     onPressed: () {
    //       Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //               builder: (context) => const ProfileScreen()));
    //     },
    //     icon: const CircleAvatar(
    //       child: Icon(Icons.person),
    //     ),
    //   ),
    // ],
    // ),
    // body:
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Bhavya,",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Good Morning",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.black,),
                                height: 75,
                                width: 20,
                                child: ListView(
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProfileScreen()));
                                        },
                                        child: Text("Profile", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),)),
                                        Divider(color: Colors.grey,),
                                    TextButton(
                                        onPressed: () async {
                                          await _auth.signOut();
                                        },
                                        child: Text("Sign Out", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),))
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: CircleAvatar(
                      child: Icon(Icons.person),
                      radius: 30,
                      backgroundColor: Colors.pink[400],
                      foregroundColor: Colors.white,
                    ),
                    iconSize: 50,
                  )
                ],
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () async {
          //     await _auth.signOut();
          //   },
          //   child: Text("Sign out"),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            margin: EdgeInsets.all(5),
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
          FeatureGridDesign(),
        ],
      ),
    );
    // bottomNavigationBar: BottomNavigationScreen(),
  }
}