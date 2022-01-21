import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';

class FavProductItem extends StatelessWidget {
  final String image;

  FavProductItem({this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Material(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            elevation: 1,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Container(
                width: 28,
                height: 28,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: colorM1),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                )),
          ),
        ],
      ),
    );
  }
}
