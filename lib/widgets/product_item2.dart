import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/product.dart';
import 'package:mawiin/screens/product%20_details.dart';
import 'package:provider/provider.dart';

class ProductItem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var product = Provider.of<Product>(context, listen: true);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ProductDetailsScreen.routeName);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          child: Material(
            borderRadius: BorderRadius.circular(25),
            elevation: 1,
            child: Container(
              width: width,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Container(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            width: width * 0.25,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: Image.asset(
                              product.image,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: textStyleM6,
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "${product.price}",
                                  style: textStyleM6,
                                ),
                                Text(
                                  " SAR",
                                  style: textStyleM2,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "${product.price}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Text(
                                  " SAR",
                                  style: TextStyle(
                                      fontSize: 10,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: InkWell(
                            onTap: () {
                              product.isSelected();
                            },
                            child: Container(
                                child: Icon(
                              product.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: colorM24,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
