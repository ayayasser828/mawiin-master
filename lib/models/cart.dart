import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier {
  final int id;
  final String name;
  int count = 0;
  final double price;
  final String image;

  Cart({this.name, this.count, this.price, this.image, this.id});

  void add() {
    this.count = this.count + 1;
    notifyListeners();
  }

  void remove() {
    if (this.count > 0) {
      this.count = this.count - 1;
    }
    notifyListeners();
  }
}
