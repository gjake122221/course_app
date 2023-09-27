import 'package:flutter/material.dart';

import '../content/cards.dart';
import 'main_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Master Class'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: MainPage(),
    );
  }
}
