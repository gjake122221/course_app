import 'package:flutter/material.dart';

import '../pages/class_pages.dart';
import '../pages/main_page.dart';

class MyAppState extends ChangeNotifier {
  Widget cardTitle = MainPage();
  void cardtitle(value) {
    Widget? page;
    switch (value) {
      case 0:
        page = NewPage();
        break;
      default:
        page = MainPage();
        break;
    }
    cardTitle = page;
    notifyListeners();
  }
}
