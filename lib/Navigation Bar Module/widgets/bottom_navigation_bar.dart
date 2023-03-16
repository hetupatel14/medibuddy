import 'package:flutter/material.dart';
// import 'package:medibuddy/screens/Navigation%20Screens/calendar_screen.dart';
import 'package:medibuddy/Navigation%20Bar%20Module/Diet%20Module/diet_screen.dart';
import 'package:medibuddy/Navigation%20Bar%20Module/Exercise%20Module/screens/exercise_screen.dart';
import 'package:medibuddy/Navigation%20Bar%20Module/Home%20Module/screen/homescreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  static const routeName = '/bottomNavigation';

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  late List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 1;

  @override
  void initState() {
    _pages = [
      {
        'page': ExerciseScreen(),
        'title': Text(
          "Exercise",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      },
      {
        'page': HomeScreen(),
      },
      {
        'page': DietScreen(),
        'title': Text(
          "Diet",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      },
      // {
      //   'page': CalendarScreen(),
      //   'title': Text(
      //     "Calendar",
      //     style: TextStyle(
      //         color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      //   ),
      // }
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {});
    _selectedPageIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
        elevation: 0,
        title: _pages[_selectedPageIndex]['title'],
      ),
      extendBody: false,
      backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
      body: Container(margin: EdgeInsets.only(top: 0),child: _pages[_selectedPageIndex]['page']),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _selectPage,
            currentIndex: _selectedPageIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant_sharp), label: ""),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.calendar_month_outlined), label: ""),
            ],
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.pink[400],
            elevation: 2,
          ),
        ),
    );
  }
}
