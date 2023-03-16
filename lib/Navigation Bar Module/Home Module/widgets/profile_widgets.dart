import 'package:flutter/material.dart';
import 'package:medibuddy/Patient%20module/screens/patient_screen.dart';

@override
Widget profileWidgets(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 125,
    margin: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.pink[200],
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      // border: Border.all(
      //   color: Colors.black,
      //   width: 1,
      // ),
    ),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bhavya",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 3,
                ),
                const Text(
                  "abcd@xyz.com",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 25,
              child: Icon(Icons.account_circle_sharp),
              backgroundColor: Colors.pink[400],
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget profileContainer(BuildContext context, String title) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 380,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.pink[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        // border: Border.all(
        //   color: Colors.black,
        //   width: 1,
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 5),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.person, color: Colors.black,),
                      label: Text(
                        'Edit profile',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[200]),),
                ),
              ),
              Divider(
                color: Colors.black26,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PatientScreen()));
                      },
                      icon: Icon(Icons.medical_services, color: Colors.black,),
                      label: Text(
                        'Medical History',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[200]),),
                ),
              ),
              Divider(
                color: Colors.black26,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.article_outlined, color: Colors.black,),
                      label: Text(
                        'Medical Reports',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[200]),),
                ),
              ),
              Divider(
                color: Colors.black26,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.timer_outlined, color: Colors.black,),
                      label: Text(
                        'View History',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[200]),),
                ),
              ),
            ],
          )
        ],
      ));
}

Widget profileSettings(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 165,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.pink[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        // border: Border.all(
        //   color: Colors.black,
        //   width: 1,
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.settings, color: Colors.black,),
                      label: Text(
                        'Settings',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[200]),),
                ),
              ),
          Divider(
            color: Colors.black26,
          ),
          Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.logout_outlined, color: Colors.black,),
                      label: Text(
                        'Log out',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[200]),),
                ),
              ),
        ],
      ));
}