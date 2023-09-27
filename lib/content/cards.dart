import 'package:flutter/material.dart';

class CrtCard extends StatelessWidget {
  const CrtCard({
    super.key,
    required this.cardtitle,
    required this.cardsubtitle,
    required this.width,
    required this.height,
  });
  final String cardtitle;
  final String cardsubtitle;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
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
            onTap: () => {},
          ),
        ),
      ),
    );
  }
}
