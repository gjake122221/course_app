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
                card0h,
                card1h,
                card2h,
                card3h,
              ],
            ),
          ),
          ListTile(
            title: Text('Free Online Class'),
            subtitle: Text('Start Learning now'),
          ),
          Column(
            children: [
              card7v,
              card5v,
              card4v,
              card3v,
              card2v,
              card1v,
              card6v,
              card0v,
            ],
          ),
        ],
      ),
    );
  }
}
