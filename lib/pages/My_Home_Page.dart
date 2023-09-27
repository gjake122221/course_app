import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../appstate/my_appstate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var page = appState.cardTitle;
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Master Class'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: page,
    );
  }
}
