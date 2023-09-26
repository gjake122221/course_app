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
        body: Column(
          children: [
            Row(
              children: [
                CrtCard(
                  cardtitle: 'SP Elec 1B',
                  cardsubtitle: 'Mobile Application',
                  width: 200,
                  height: 300,
                ),
                CrtCard(
                  cardtitle: 'SP Elec 1B',
                  cardsubtitle: 'Mobile Application',
                  width: 200,
                  height: 300,
                ),
                CrtCard(
                  cardtitle: 'SP Elec 1B',
                  cardsubtitle: 'Mobile Application',
                  width: 200,
                  height: 300,
                ),
              ],
            ),
            ListTile(
              title: Text('Free Online Class'),
              subtitle: Text('Form Over 80 Lectures'),
            ),
            Column(
              children: [
                CrtCard(
                  cardtitle: 'CodeLab',
                  cardsubtitle: 'Make your first App',
                  width: 450,
                  height: 150,
                ),
                CrtCard(
                  cardtitle: 'CodeLab',
                  cardsubtitle: 'Make your first App',
                  width: 450,
                  height: 150,
                ),
                CrtCard(
                  cardtitle: 'CodeLab',
                  cardsubtitle: 'Make your first App',
                  width: 450,
                  height: 150,
                ),
              ],
            ),
          ],
        ));
  }
}
