import 'package:flutter/material.dart';

import '../content/cards.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Master Class'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
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
                    width: 200,
                    height: 300,
                  ),
                  CrtCard(
                    cardtitle: 'AppsDev',
                    cardsubtitle: 'HTML CSS JS',
                    width: 200,
                    height: 300,
                  ),
                  CrtCard(
                    cardtitle: 'IM2',
                    cardsubtitle: 'Data Management',
                    width: 200,
                    height: 300,
                  ),
                  CrtCard(
                    cardtitle: 'Net2',
                    cardsubtitle: 'Networking',
                    width: 200,
                    height: 300,
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
                  width: 330,
                  height: 120,
                ),
                CrtCard(
                  cardtitle: 'Programing',
                  cardsubtitle: 'Learn in C',
                  width: 330,
                  height: 120,
                ),
                CrtCard(
                  cardtitle: 'CodeLab',
                  cardsubtitle: 'Make your first App',
                  width: 330,
                  height: 120,
                ),
                CrtCard(
                  cardtitle: 'DVA',
                  cardsubtitle: 'Digital Arts',
                  width: 330,
                  height: 120,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
