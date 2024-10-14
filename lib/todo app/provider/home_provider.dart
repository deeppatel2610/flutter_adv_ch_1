import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier {
  List<String> taskList = [];
  List<String> detailsList = [];
  List<String> checkList = [];

  void addList(String task, details) {
    taskList.add(task);
    detailsList.add(details);
    checkList.add('false');
    notifyListeners();
  }

  void deleteList(int index) {
    taskList.removeAt(index);
    detailsList.removeAt(index);
    checkList.removeAt(index);
    notifyListeners();
  }

  void checkBox(bool value, int index) {
    checkList[index] = '$value';
    notifyListeners();
  }

  Future<void> set() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList('taskList', taskList);
    await sharedPreferences.setStringList('detailsList', detailsList);
    await sharedPreferences.setStringList('checkList', checkList);
  }

  HomeProvider(tempTaskLiat, tempDetailsList, tempCheckList) {
    taskList = tempTaskLiat;
    detailsList = tempDetailsList;
    checkList = tempCheckList;
    // notifyListeners();
  }
}
