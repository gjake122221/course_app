import 'package:flutter/material.dart';

import '../pages/class_pages.dart';
import '../pages/main_page.dart';

class MyAppState extends ChangeNotifier {
  Widget cardTitle = MainPage();
  void cardtitle(value) {
    Widget page;
    switch (value) {
      case 0:
        page = page0;
        break;
      case 1:
        page = page1;
        break;
      case 2:
        page = page2;
        break;
      case 3:
        page = page3;
        break;
      case 4:
        page = page4;
        break;
      case 5:
        page = page5;
        break;
      case 6:
        page = page6;
        break;
      case 7:
        page = page7;
        break;
      default:
        page = MainPage();
        break;
    }
    cardTitle = page;
    notifyListeners();
  }
}
