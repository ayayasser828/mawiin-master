import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/screens/product%20_details.dart';

import 'bottom_nav_bar_widget.dart';

class OffProductItem extends StatefulWidget {
  final String image;
  final String name;
  final double price;

  OffProductItem({this.image, this.name, this.price});

  @override
  _OffProductItemState createState() => _OffProductItemState();
}

class _OffProductItemState extends State<OffProductItem> {
  bool isFavorite = false;

  void favClicked() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.6,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ProductDetailsScreen.routeName);
              },
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: height * 0.38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: colorA12,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          width: width * 0.35,
                          height: height * 0.15,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          width: width * 0.6,
                          height: height * 0.08,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${widget.name}',
                                style: textStyleM2,
                              ),
                              Text(
                                '${widget.price} ريال سعودي',
                                style: textStyleM2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Container(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomBar(
                            index: 0,
                          )));
                },
                child: InkWell(
                  onTap: () {
                    setState(() {
                      favClicked();
                    });
                  },
                  child: Container(
                      width: width * 0.06,
                      height: height * 0.06,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: isFavorite
                          ? Icon(
                              Icons.shopping_cart,
                              color: Colors.grey,
                            )
                          : Icon(
                              Icons.shopping_cart,
                              color: Colors.red,
                            )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
