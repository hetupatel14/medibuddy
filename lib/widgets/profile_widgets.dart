import 'package:flutter/material.dart';

@override
Widget profileWidgets(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 125,
    margin: const EdgeInsets.symmetric(horizontal: 15),
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
              radius: 35,
              child: Icon(Icons.account_circle_sharp),
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
      height: 325,
      margin: const EdgeInsets.symmetric(horizontal: 15),
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
            children: [
              buildListView(Icons.person, "Edit Profile", () {}),
              Divider(
                color: Colors.black26,
              ),
              buildListView(
                  Icons.medical_services, "Medical History", () {}),
              Divider(
                color: Colors.black26,
              ),
              buildListView(
                  Icons.article_outlined, "Medical Reports", () {}),
              Divider(
                color: Colors.black26,
              ),
              buildListView(Icons.article_outlined, "View Activity", () {}),
            ],
          )
        ],
      ));
}

Widget profileSettings(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 135,
      margin: const EdgeInsets.symmetric(horizontal: 15),
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
      child: Column(
        children: [
          buildListView(Icons.settings, "Settings", () {}),
           Divider(
                color: Colors.black26,
              ),
          buildListView(Icons.logout_outlined, "Logout", () {}),
        ],
      ));
}

Widget buildListView(IconData icon, String title, Function tapHandler) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: tapHandler(),
  );
}
