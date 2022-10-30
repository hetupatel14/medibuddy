import 'package:flutter/material.dart';
import 'package:medibuddy/widgets/profile_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text('Profile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  profileWidgets(context),
                  const SizedBox(height: 15,),
                  profileContainer(context, "Profile Settings"),
                  const SizedBox(height: 15,),
                  profileSettings(context),
                ],
              ),
            ),
          ),
        ));
  }
}

