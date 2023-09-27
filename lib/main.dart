import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appstate/my_appstate.dart';
import 'pages/My_Home_Page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Course App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
