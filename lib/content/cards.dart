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
  });
  final String cardtitle;
  final String cardsubtitle;
  final String cardimage;
  final double scale;
  final double width;
  final double height;
  final int id;
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Card(
      child: Container(
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
            onTap: () => {appState.cardtitle(id)},
          ),
        ),
      ),
    );
  }
}

var card0 = CrtCard(
  cardtitle: 'SP Elec 1B',
  cardsubtitle: 'Mobile Applications',
  cardimage: 'image/Saly-card1.png',
  scale: 1.5,
  width: 200,
  height: 300,
  id: 0,
);
var card1 = CrtCard(
  cardtitle: 'AppsDev',
  cardsubtitle: 'HTML CSS JS',
  cardimage: 'image/Saly-card2.png',
  scale: 1.5,
  width: 200,
  height: 300,
  id: 1,
);
var card2 = CrtCard(
  cardtitle: 'IM2',
  cardsubtitle: 'Data Management',
  cardimage: 'image/Saly-card1.png',
  scale: 1.5,
  width: 200,
  height: 300,
  id: 2,
);
var card3 = CrtCard(
  cardtitle: 'Net2',
  cardsubtitle: 'Networking',
  cardimage: 'image/Saly-card2.png',
  scale: 1.5,
  width: 200,
  height: 300,
  id: 3,
);
var card4 = CrtCard(
  cardtitle: 'OOP',
  cardsubtitle: 'Object Oreinted Programing',
  cardimage: 'image/Saly-20.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 4,
);
var card5 = CrtCard(
  cardtitle: 'Programing',
  cardsubtitle: 'Learn in C',
  cardimage: 'image/Saly-21.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 5,
);
var card6 = CrtCard(
  cardtitle: 'CodeLab',
  cardsubtitle: 'Make your first App',
  cardimage: 'image/Saly-23.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 6,
);
var card7 = CrtCard(
  cardtitle: 'DVA',
  cardsubtitle: 'Digital Arts',
  cardimage: 'image/Saly-24.png',
  scale: 1,
  width: 330,
  height: 120,
  id: 7,
);
