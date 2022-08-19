import 'package:flutter/material.dart';
import '../models/feature.dart';

class FeatureGrid extends StatelessWidget {
  final String id;
  final String imageUrl;
  const FeatureGrid({Key? key, required this.id, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: Container(
          child: Image.network(
            imageUrl,
            height: 10,
            width: 10,
            alignment: Alignment.centerLeft,
          ),
          color: Colors.indigo[50],
        ),
      ),
    );
  }
}

class FeatureGirdDesign extends StatelessWidget {

  final List<Feature> loadedFeatures = [
    Feature(
      id: '1',
      title: "Doctors",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '2',
      title: "Hospitals",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '3',
      title: "Laboratories",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '4',
      title: "abc",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '5',
      title: "xyz",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '6',
      title: "pqr",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '7',
      title: "stu",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '8',
      title: "hij",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '9',
      title: "efg",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
    ),
    Feature(
      id: '10',
      title: "klm",
      imageUrl:
          "https://st3.depositphotos.com/1006714/32541/v/1600/depositphotos_325418786-stock-illustration-mobile-app-to-search-for.jpg",
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
          mainAxisSpacing: 12,),
      itemBuilder: (ctx, i) => FeatureGrid(
          id: loadedFeatures[i].id, imageUrl: loadedFeatures[i].imageUrl),
    );
  }
}
