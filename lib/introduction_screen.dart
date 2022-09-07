import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medibuddy/screens/homescreen.dart';
import 'package:medibuddy/widgets/bottom_navigation_bar.dart';

class IntroScreen extends StatelessWidget {
  static const routeName = '/onboard';
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'First Page',
        body: 'Description',
        footer: ElevatedButton(
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
        image: Center(
          child: Image.asset('assets/images/login.jpg'),
        ),
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Second Page',
        body: 'Description',
        footer: ElevatedButton(
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
        image: Center(
          child: Image.asset('assets/images/password.png'),
        ),
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    PageViewModel(
        title: 'Third Page',
        body: 'Description',
        footer: ElevatedButton(
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
        image: Center(
          child: Image.asset('assets/images/verification.jpg'),
        ),
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        )))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('On Boearing'),
          centerTitle: true,
        ),
        body: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(10, 10),
            color: Colors.blue,
            activeSize: Size.square(15),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 20,
          ),
          onDone: () => onDone(context),
        ));
  }

  void onDone(context) {
    Navigator.popAndPushNamed(context, BottomNavigationScreen.routeName);
  }
}
