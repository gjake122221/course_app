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
                card0,
                card1,
                card2,
                card3,
              ],
            ),
          ),
          ListTile(
            title: Text('Free Online Class'),
            subtitle: Text('Start Learning now'),
          ),
          Column(
            children: [
              card4,
              card5,
              card6,
              card7,
            ],
          ),
        ],
      ),
    );
  }
}
