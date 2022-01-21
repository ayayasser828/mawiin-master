import 'package:flutter/cupertino.dart';

class TypeProduct with ChangeNotifier {
  final int id;
  final String name;
  bool selected;

  TypeProduct({this.name, this.selected, this.id});


  void select() {
    this.selected = true;
    notifyListeners();
  }

  void unSelect() {
    this.selected = false;
    notifyListeners();
  }
}
