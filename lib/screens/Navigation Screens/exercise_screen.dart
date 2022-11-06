import 'package:flutter/material.dart';
import 'package:banner_listtile/banner_listtile.dart';
import 'package:medibuddy/screens/Navigation%20Screens/exercise%20videos/burpees.dart';
import 'package:medibuddy/screens/Navigation%20Screens/exercise%20videos/crunches.dart';
import 'package:medibuddy/screens/Navigation%20Screens/exercise%20videos/leg_raise.dart';
import 'package:medibuddy/screens/Navigation%20Screens/exercise%20videos/plank.dart';
import 'package:medibuddy/screens/Navigation%20Screens/exercise%20videos/pushup.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        width: width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            BannerListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CrunchesVideo()));
              },
              backgroundColor: Colors.pink[200],
              borderRadius: BorderRadius.circular(8),
              imageContainer: const Image(
                  image: NetworkImage(
                      "https://thumbs.dreamstime.com/b/art-illustration-200250737.jpg"),
                  fit: BoxFit.fitWidth),
              title: const Text(
                "Crunches",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: const Text("Daily exercise",
                  style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
            const SizedBox(height: 20),
            BannerListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PushupVideo()));
              },
              backgroundColor: Colors.pink[200],
              borderRadius: BorderRadius.circular(8),
              imageContainer: const Image(
                  image: NetworkImage(
                      "http://www.stack.com/wp-content/uploads/Quickly-Strengthen-Your-Upper-Body-With-Pyramid-Push-Ups.jpg"),
                  fit: BoxFit.fitWidth),
              title: const Text(
                "Push-ups",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: const Text("Daily exercise",
                  style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
            const SizedBox(height: 20),
            BannerListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BurpeesVideo()));
              },
              backgroundColor: Colors.pink[200],
              borderRadius: BorderRadius.circular(8),
              imageContainer: const Image(
                  image: NetworkImage(
                      "https://tipsforwomens.org/wp-content/uploads/2020/12/Burpees-what-are-they-for-muscles-involved-and-execution-of-1024x584.jpg"),
                  fit: BoxFit.fitWidth),
              title: const Text(
                "Burpees",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: const Text("Daily exercise",
                  style: TextStyle(fontSize: 13, color: Colors.white)),
            ),

            //
            const SizedBox(height: 20),
            //
            BannerListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlankVideo()));
              },
              backgroundColor: Colors.pink[200],
              borderRadius: BorderRadius.circular(8),
              imageContainer: const Image(
                  image: NetworkImage(
                      "https://media.istockphoto.com/vectors/woman-doing-plank-exercise-on-blue-mat-with-stopclock-symbol-over-her-vector-id1204463032?k=20&m=1204463032&s=612x612&w=0&h=2nQ9TtrA-sp4GUoPVc-pcqZGfH3w308dPnjJSsNRaOk="),
                  fit: BoxFit.fitWidth),
              title: const Text(
                "Planks",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: const Text("Daily exercise",
                  style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
            //
            const SizedBox(height: 20),
            //
            BannerListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LegRaiseVideo()));
              },
              backgroundColor: Colors.pink[200],
              borderRadius: BorderRadius.circular(8),
              imageContainer: const Image(
                  image: NetworkImage(
                      "https://theopinionatedindian.com/static/c1e/client/86164/uploaded_original/f02fddee05d08f7b513d248b1aa2f5ae.jpg"),
                  fit: BoxFit.fitWidth),
              title: const Text(
                "Leg Raises",
                style: TextStyle(fontSize: 24, color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: const Text("Daily exercise",
                  style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
