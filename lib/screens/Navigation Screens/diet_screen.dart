import 'package:flutter/material.dart';

class DietScreen extends StatefulWidget {
  // final String title;
  const DietScreen({Key? key,}) : super(key: key);

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
    final List<League> data = <League>[
    League(
      'Salads',
      <Club>[
        Club(
          'Chickpea Salad',
          <Player>[
            Player('With side of chefs knife, bash cucumbers slightly to crush, halve lengthwise, then cut each into 4 to 6 chunks. Transfer cucumbers to bowl and toss with 2 tsp salt. Let sit 10 minutes. Meanwhile, in large bowl, whisk together lemon juice and honey to dissolve. Whisk in oil, capers, oregano, and 1/4 teaspoon each salt and pepper. Add onion, jalapeño, and chickpeas and toss to combine. Let sit at least 10 minutes. Transfer cucumbers to colander and rinse, then shake off as much water as possible. Add to bowl with dressing, along with tomatoes and parsley, and toss to combine. Serve topped with feta if desired.'),
            
          ],
        ),
        Club(
          'High Protein Salad',
          <Player>[
            Player('firstly, in a bowl take ½ cup olive oil, 2 tbsp lemon juice, ½ tsp mixed herbs, ½ tsp pepper, ½ tsp garlic paste and ½ tsp salt. mix well making sure everything is well combined. salad dressing is ready. keep aside. firstly, in a pan heat 2 tsp olive oil and add 1 cup tofu roast on low flame until the tofu turns crisp. now add ¼ tsp pepper and ¼ tsp salt. mix well making sure the spices are coated well. crispy tofu is ready.'),
            
          ],
        ),
      ],
    ),
    League(
      'Diet Pasta',
      <Club>[
        Club(
          'Cauliflower Alfredo',
          <Player>[
            Player('Cook fettuccine per package directions. Meanwhile, heat olive oil in large skillet on medium. Add cauliflower, onion and garlic and cook, covered, until just tender, 5 to 7 minutes. Add 2 cups water and simmer until vegetables are very soft. Drain, reserving liquid. Transfer vegetables to blender along with nutritional yeast and 1/2 teaspoon salt and puree, adding just enough reserved vegetable liquid to get blender moving (about 1/4 cup), until smooth. Toss with pasta, adding some vegetable liquid if pasta seems dry, and sprinkle with coarsely ground black pepper, to taste.'),
          ],
        ),
        Club(
          'Marinated pepper pasta',
          <Player>[
            Player('Heat oven to 425°F. On rimmed baking sheet, toss onions with olive oil and 1/4 teaspoon each salt and pepper. Roast until golden brown and tender, 15 to 20 minutes. Cook rigatoni per package directions. Reserve 1/2 cup pasta cooking water, then drain. Toss pasta with 1/4 cup pasta water and Pecorino Romano, adding more water if pasta seems dry. Then toss with onions and marinated peppers and season with salt and pepper. Fold in basil. Drizzle with additional oil and serve topped with grated pecorino if desired.'),
          ],
        ),
      ],
    ),
    League(
      'Diet Pizza',
      <Club>[
        Club(
          'Mushroom and Brussel sprout pizza',
          <Player>[
            Player('Heat oven to 475°F. Sprinkle baking sheet with cornmeal or line with parchment paper. On lightly floured surface, shape pizza dough into large oval. Transfer to prepared sheet and sprinkle with all but ½ cup fontina. In large bowl, toss mushrooms with balsamic vinegar. Add Brussels sprouts (whole leaves and slices) and onion, drizzle with oil and season with ½ tsp each salt and pepper. Toss to combine and scatter over dough. Sprinkle with remaining fontina, then crumble goat cheese over top and sprinkle with thyme. Bake until crust is deep golden brown and vegetables are tender, 10 to 12 min.'),
          ],
        ),
      ],
    ),
    League(
      'Diet Bowl',
      <Club>[
        Club(
          'Crispy tofu bowl',
          <Player>[
            Player('Slice tofu 1/4 inch thick. Place on cutting board between paper towels; top with baking sheet. Top with large cans or other weight; let stand 10 minutes. Soak red onion in cold water.Whisk red wine vinegar and Thai sweet chili sauce, olive oil and 1/4 teaspoon salt. Pat onion dry; toss with half of vinaigrette and cucumber.Sprinkle tofu on both sides with cornstarch. In 12-inch skillet, heat vegetable oil on medium-high until hot. Carefully add tofu. Cook until deep golden brown, 2 to 3 minutes per side. Drain on paper towels.Divide quinoa among 4 bowls. Top each with salad, roasted cashew halves, parsley leaves and tofu.'),
          ],
        ),
      ],
    ),
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            MyExpandableWidget(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

class MyExpandableWidget extends StatelessWidget {
  final League league;
 
  MyExpandableWidget(this.league);
 
  @override
  Widget build(BuildContext context) {
    if (league.listClubs.isEmpty)
      return ListTile(title: Text(league.leagueName));
    return ExpansionTile(
      key: PageStorageKey<League>(league),
      title: Text(league.leagueName, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
      children: league.listClubs
          .map<Widget>((club) => showClubs(club))
          .toList(),
    );
  }
}
 
showClubs(Club club) {
  return new ExpansionTile(
    key: PageStorageKey<Club>(club),
    title: Text(club.clubName, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),
    children: club.listPlayers.map<Widget>((player) => showPlayers(player)).toList(),
  );
}
 
showPlayers(Player player) {
  return new ListTile(
    title: new Text(
      player.playerName,
      style: new TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}
 
class League {
  String leagueName;
  List<Club> listClubs;
 
  League(this.leagueName, this.listClubs);
}
 
class Club {
  String clubName;
  List<Player> listPlayers;
 
  Club(this.clubName, this.listPlayers);
}
 
class Player {
  String playerName;
 
  Player(this.playerName);
}