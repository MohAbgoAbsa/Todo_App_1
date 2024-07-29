import 'package:flutter/material.dart';

class Appchangnotefprovid extends ChangeNotifier {
  String selectlang = 'ar';

  void changlang(String oldlang) {
    if (selectlang == oldlang) {
      return;
    }
    selectlang = oldlang;
    notifyListeners();
  }
}
