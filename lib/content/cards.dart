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
    this.suggestion,
  });
  final String cardtitle;
  final String cardsubtitle;
  final String cardimage;
  final double scale;
  final double width;
  final double height;
  final int id;
  final String? suggestion;
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
                subtitle: Text(cardsubtitle),
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
                child: Text(suggestion!),
              ),
            ),
          ),
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
);
