import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../appstate/my_appstate.dart';

class CrtCard extends StatelessWidget {
  const CrtCard({
    super.key,
    required this.cardtitle,
    required this.cardsubtitle,
    required this.width,
    required this.height,
    required this.id,
  });
  final String cardtitle;
  final String cardsubtitle;
  final double width;
  final double height;
  final int id;
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Card(
      child: SizedBox(
        width: width,
        height: height,
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
