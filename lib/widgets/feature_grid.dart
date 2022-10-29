import 'package:flutter/material.dart';
import 'package:medibuddy/screens/Feature%20Screens/blood_banks_screen.dart';
import 'package:medibuddy/screens/Feature%20Screens/care_takers_screen.dart';
import 'package:medibuddy/screens/Feature%20Screens/doctor_screen.dart';
import 'package:medibuddy/screens/Feature%20Screens/hospital_screen.dart';
import 'package:medibuddy/screens/Feature%20Screens/laboratories_screen.dart';
import 'package:medibuddy/screens/Feature%20Screens/medical_shops.dart';
import '../models/feature.dart';

// class FeatureGrid extends StatelessWidget {
//   final String id;
//   final String imageUrl;
//   final String title;
//   const FeatureGrid({Key? key, required this.id, required this.imageUrl, required this.title})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: GridTile(
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 child: Image.asset(
//                   imageUrl,
//                   height: 80,
//                   width: 80,
//                   // alignment: Alignment.centerLeft,
//                 ),
//               ),
//               Container(
//                   margin: EdgeInsets.only(left: 5),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "$title",
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       TextButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ProfileScreen()));
//                           },
//                           child: Container(
//                             padding: EdgeInsets.fromLTRB(6, 4, 6, 4),
//                             decoration: BoxDecoration(
//                                 border:
//                                     Border.all(color: Colors.white, width: 2), borderRadius: BorderRadius.circular(20)),
//                             child: Text(
//                               "Explore",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                           ))
//                     ],
//                   ))
//             ],
//           ),
//           color: Colors.pink[200],
//         ),
//       ),
//     );
//   }
// }

class FeatureGridDesign extends StatelessWidget {
  // final String id;
  // final String imageUrl;
  // final String title;
  // FeatureGridDesign(
  //     {Key? key, required this.id, required this.imageUrl, required this.title})
  //     : super(key: key);

  final List<Feature> loadedFeatures = [
    Feature(
      id: '1',
      title: "Doctors",
      imageUrl: "assets/images/doctor.png",
    ),
    Feature(
      id: '2',
      title: "Hospitals",
      imageUrl: "assets/images/doctor.png",
    ),
    Feature(
      id: '3',
      title: "Laboratories",
      imageUrl: "assets/images/doctor.png",
    ),
    Feature(
      id: '4',
      title: "Medical Shops",
      imageUrl: "assets/images/doctor.png",
    ),
    Feature(
      id: '5',
      title: "Blood Banks",
      imageUrl: "assets/images/doctor.png",
    ),
    Feature(
      id: '6',
      title: "Care Takers",
      imageUrl: "assets/images/doctor.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
      itemCount: loadedFeatures.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (ctx, i) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(
                    loadedFeatures[i].imageUrl,
                    height: 80,
                    width: 80,
                    // alignment: Alignment.centerLeft,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          loadedFeatures[i].title,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              switch (loadedFeatures[i].id) {
                                case '1':
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DoctorScreen()));
                                  break;
                                case '2':
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HospitalScreen()));
                                  break;
                                case '3':
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LaboratoryScreen()));
                                  break;
                                case '4':
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MedicalShopScreen()));
                                  break;
                                case '5':
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BloodBankScreen()));
                                  break;
                                case '6':
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CareTakerScreen()));
                                  break;
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(6, 4, 6, 4),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Explore",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ))
                      ],
                    ))
              ],
            ),
            color: Colors.pink[200],
          ),
        ),
      ),
    );
  }
}
