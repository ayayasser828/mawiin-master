import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/screens/product%20_details.dart';

class ProductsIem extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final double rate;
  final int numberOfRate;
  final String details;

  ProductsIem(
      {this.image,
      this.name,
      this.price,
      this.rate,
      this.numberOfRate,
      this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(ProductDetailsScreen.routeName);
        },
        child: Container(
          width: 180,
          height: 240,
          decoration: BoxDecoration(
              color: colorM12, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 185,
                    height: 78,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.end,
                    style: textStyleM9,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          "$price",
                          style: textStyleM5,
                        ),
                        Text(
                          " SAR",
                          style: textStyleM5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RatingBar(
                          initialRating: rate,
                          ignoreGestures: true,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 4,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: colorM1,
                          ),
                          itemSize: 12,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          "($numberOfRate)",
                          style: textStyleM10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 185,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        color: colorM12,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        onPressed: () {},
                        child: Text(
                          "أضف إلي العربة",
                          style: textStyleM5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
