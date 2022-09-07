import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medibuddy/widgets/bottom_navigation_bar.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = '/onboard';
  IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => BottomNavigationScreen()),
    );
  }

  //  Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/images/login.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }
  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
            title: 'First Page',
            body: 'Description',
            // footer: ElevatedButton(
            //   onPressed: () {},
            //   child: const Text("Let's Go"),
            // ),
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
            // footer: ElevatedButton(
            //   onPressed: () {},
            //   child: const Text("Let's Go"),
            // ),
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
            // footer: ElevatedButton(
            //   onPressed: () {
            //     Navigator.popAndPushNamed(
            //         context, BottomNavigationScreen.routeName);
            //   },
            //   child: const Text("Let's Go"),
            // ),
            image: Center(
              child: Image.asset('assets/images/verification.jpg'),
            ),
            decoration: PageDecoration(
                titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )))
      ],
      onDone: () => _onIntroEnd(context),
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
    );
  }

  void onDone(context) {
    Navigator.popAndPushNamed(context, BottomNavigationScreen.routeName);
  }
}
