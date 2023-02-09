import 'package:flutter/material.dart';

class MenuProvider extends ChangeNotifier {
  int _seleMenu = 0;

  int get seleMenu => _seleMenu;

  set seleMenu(int value) {
    _seleMenu = value;
    notifyListeners();
  }
}
