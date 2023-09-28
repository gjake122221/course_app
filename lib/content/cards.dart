import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../appstate/my_appstate.dart';

class CrtCard extends StatelessWidget {
  const CrtCard({
    super.key,
    required this.cardtitle,
    required this.cardsubtitle,
    required this.cardimage,
    required this.scale,
    required this.width,
    required this.height,
    required this.id,
    required this.suggestion,
    required this.visibleRating,
  });
  final String cardtitle;
  final String cardsubtitle;
  final String cardimage;
  final double scale;
  final double width;
  final double height;
  final int id;
  final String suggestion;
  final bool visibleRating;
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Card(
      child: Stack(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                scale: scale,
                image: AssetImage(cardimage),
                alignment: Alignment.bottomRight,
                fit: BoxFit.none,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListTile(
                hoverColor: Theme.of(context).hoverColor,
                trailing: Icon(Icons.arrow_circle_right_outlined),
                title: Text(
                  cardtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  cardsubtitle,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () => {
                  appState.cardtitle(id),
                },
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 10,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(suggestion),
              ),
            ),
          ),
          Positioned(
              top: 60,
              left: 15,
              child: Visibility(
                visible: visibleRating,
                child: StarRating(),
              ))
        ],
      ),
    );
  }
}

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  var count = 0;
  List<IconData> icon = [
    Icons.star_border,
    Icons.star_border,
    Icons.star_border,
    Icons.star_border,
    Icons.star_border,
  ];

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 15,
      onPressed: () {
        setState(() {
          if (count < 5) {
            icon[count] = Icons.star;
            count++;
          } else {
            for (var i = 0; i < icon.length; i++) {
              icon[i] = Icons.star_border;
            }
            count = 0;
          }
        });
      },
      icon: Row(
        children: [
          Icon(icon[0]),
          Icon(icon[1]),
          Icon(icon[2]),
          Icon(icon[3]),
          Icon(icon[4]),
        ],
      ),
    );
  }
}

var card0h = CrtCard(
  cardtitle: 'SP Elec 1B',
  cardsubtitle: 'Mobile Applications',
  cardimage: 'image/Saly-card1.png',
  scale: 1.5,
  width: 200,
  height: 300,
  id: 0,
  suggestion: 'Recommended',
  visibleRating: false,
);
var card1h = CrtCard(
  cardtitle: 'AppsDev',
  cardsubtitle: 'HTML CSS JS',
  cardimage: 'image/Saly-card2.png',
  scale: 1.5,
  width: 200,
  height: 300,
  id: 1,
  suggestion: 'New Class',
  visibleRating: false,
);
var card2h = CrtCard(
  cardtitle: 'IM2',
  cardsubtitle: 'Data Management',
  cardimage: 'image/Saly-card1.png',
  scale: 1.5,
  width: 200,
  height: 300,
  id: 2,
  suggestion: 'New Class',
  visibleRating: false,
);
var card3h = CrtCard(
  cardtitle: 'Net2',
  cardsubtitle: 'Networking',
  cardimage: 'image/Saly-card2.png',
  scale: 1,
  width: 200,
  height: 300,
  id: 3,
  suggestion: 'Recommended',
  visibleRating: false,
);
var card0v = CrtCard(
  cardtitle: 'SP Elec 1B',
  cardsubtitle: 'Mobile Applications',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 0,
  suggestion: '',
  visibleRating: true,
);
var card1v = CrtCard(
  cardtitle: 'AppsDev',
  cardsubtitle: 'HTML CSS JS',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 1,
  suggestion: '',
  visibleRating: true,
);
var card2v = CrtCard(
  cardtitle: 'IM2',
  cardsubtitle: 'Data Management',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 2,
  suggestion: '',
  visibleRating: true,
);
var card3v = CrtCard(
  cardtitle: 'Net2',
  cardsubtitle: 'Networking',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 3,
  suggestion: '',
  visibleRating: true,
);
var card4v = CrtCard(
  cardtitle: 'OOP',
  cardsubtitle: 'Object Oreinted Programing',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 4,
  suggestion: '',
  visibleRating: true,
);
var card5v = CrtCard(
  cardtitle: 'Programing',
  cardsubtitle: 'Learn in C',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 5,
  suggestion: '',
  visibleRating: true,
);
var card6v = CrtCard(
  cardtitle: 'CodeLab',
  cardsubtitle: 'Make your first App',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 6,
  suggestion: '',
  visibleRating: true,
);
var card7v = CrtCard(
  cardtitle: 'DVA',
  cardsubtitle: 'Digital Arts',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 7,
  suggestion: '',
  visibleRating: true,
);
