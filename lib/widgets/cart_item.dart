import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/cart.dart';

class CartItem extends StatefulWidget {
  final Cart cart;

  CartItem({this.cart});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Dismissible(
      key: Key((widget.cart.id).toString()),
      background: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: colorM8,
        ),
        child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.delete_outline,
                size: 30,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          alignment: Alignment.centerRight,
        ),
      ),
      onDismissed: (DismissDirection direction) {},
      child: Card(
        color: colorM26,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            width: width,
            height: 115,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 115,
                      height: 115,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            widget.cart.image,
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.cart.name,
                          style: textStyleM2,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "الكمية",
                              style: textStyleM21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${widget.cart.count}",
                              style: textStyleM21,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "${(widget.cart.price * widget.cart.count).toStringAsFixed(2)}",
                              style: textStyleM16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "SAR",
                              style: textStyleM18,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          widget.cart.add();
                          setState(() {});
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: colorM21,
                              size: 20,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: colorM7,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                        "${widget.cart.count}",
                        style: textStyleM3,
                      ),
                      InkWell(
                        onTap: () {
                          widget.cart.remove();
                          setState(() {});
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: colorM21,
                              size: 20,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: colorM25,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
