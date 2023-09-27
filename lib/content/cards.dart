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
