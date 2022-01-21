import 'package:flutter/cupertino.dart';

class Date with ChangeNotifier {
  final String id;
  final String month;
  final String day;
  final int dayNum;
  bool isClicked;

  Date({this.id, this.month, this.day, this.dayNum, this.isClicked});

  void dateClicked() {
    isClicked = !isClicked;
    notifyListeners();
  }
}
