import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String image;
  final String name;
  final double price;
  final double rate;
  final int numberOfRate;
  final String details;
  bool isFavorite;

  Product(
      {this.image,
      this.name,
      this.price,
      this.rate,
      this.numberOfRate,
      this.details,
      this.isFavorite});

  void isSelected() {
    this.isFavorite = !this.isFavorite;
    notifyListeners();
  }
}
