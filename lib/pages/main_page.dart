import 'package:flutter/material.dart';

import '../content/cards.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CrtCard(
                  cardtitle: 'SP Elec 1B',
                  cardsubtitle: 'Mobile Applications',
                  cardimage: 'image/Saly-card1.png',
                  scale: 1.5,
                  width: 200,
                  height: 300,
                  id: 0,
                ),
                CrtCard(
                  cardtitle: 'AppsDev',
                  cardsubtitle: 'HTML CSS JS',
                  cardimage: 'image/Saly-card2.png',
                  scale: 1.5,
                  width: 200,
                  height: 300,
                  id: 1,
                ),
                CrtCard(
                  cardtitle: 'IM2',
                  cardsubtitle: 'Data Management',
                  cardimage: 'image/Saly-card1.png',
                  scale: 1.5,
                  width: 200,
                  height: 300,
                  id: 2,
                ),
                CrtCard(
                  cardtitle: 'Net2',
                  cardsubtitle: 'Networking',
                  cardimage: 'image/Saly-card2.png',
                  scale: 1.5,
                  width: 200,
                  height: 300,
                  id: 3,
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Free Online Class'),
            subtitle: Text('For over 80 lectures'),
          ),
          Column(
            children: [
              CrtCard(
                cardtitle: 'OOP',
                cardsubtitle: 'Object Oreinted Programing',
                cardimage: 'image/Saly-20.png',
                scale: 1,
                width: 330,
                height: 120,
                id: 4,
              ),
              CrtCard(
                cardtitle: 'Programing',
                cardsubtitle: 'Learn in C',
                cardimage: 'image/Saly-21.png',
                scale: 1,
                width: 330,
                height: 120,
                id: 5,
              ),
              CrtCard(
                cardtitle: 'CodeLab',
                cardsubtitle: 'Make your first App',
                cardimage: 'image/Saly-23.png',
                scale: 1,
                width: 330,
                height: 120,
                id: 6,
              ),
              CrtCard(
                cardtitle: 'DVA',
                cardsubtitle: 'Digital Arts',
                cardimage: 'image/Saly-24.png',
                scale: 1,
                width: 330,
                height: 120,
                id: 7,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
