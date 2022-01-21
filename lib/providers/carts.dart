import 'package:flutter/cupertino.dart';
import 'package:mawiin/models/cart.dart';

class Carts with ChangeNotifier {
  List<Cart> list = [
    Cart(
        name: "بدي لوشن للجسم",
        price: 155.99,
        image: "assets/images/img1.jpeg",
        count: 1,
        id: 1),
    Cart(
        name: "بدي لوشن للجسم",
        price: 112.99,
        image: "assets/images/img2.jpg",
        count: 3,
        id: 2),
    Cart(
        name: "بدي لوشن للجسم",
        price: 155.99,
        image: "assets/images/img3.jpg",
        count: 2,
        id: 3),
    Cart(
        name: "بدي لوشن للجسم",
        price: 112.99,
        image: "assets/images/img4.jpg",
        count: 1,
        id: 4),
  ];
}
