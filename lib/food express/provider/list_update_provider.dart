import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListUpdateProvider extends ChangeNotifier {
  int index = 0;
  bool isHome = false;

  void listUpdate() {
    if (index < 2) {
      index++;
    }
    notifyListeners();
  }

  void lastPage() {
    isHome = true;
    notifyListeners();
  }

  Future<void> setData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool('isHome', isHome);
  }

  ListUpdateProvider(isHomeTemp) {
    isHome = isHomeTemp;
  }
}
