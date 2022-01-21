
import 'package:flutter/cupertino.dart';

class TypeFilter with ChangeNotifier{
  final String name;
  bool selected;
  TypeFilter({this.name, this.selected});


  void updateSelected(){
    this.selected = !this.selected;
    notifyListeners();
  }
}