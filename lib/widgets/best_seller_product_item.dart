import 'package:flutter/material.dart';
import 'package:mawiin/screens/product%20_details.dart';

class BestSellerProductItem extends StatelessWidget {
  final String image;

  BestSellerProductItem({this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ProductDetailsScreen.routeName);
        },
        child: Tooltip(
          message: '159 ر.س',
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            elevation: 1,
            child: Container(
              width: width * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill)),
            ),
          ),
        ),
      ),
    );
  }
}
