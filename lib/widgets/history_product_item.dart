import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';

class HistoryProductItem extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final double price;

  HistoryProductItem({this.image, this.name, this.date, this.price});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.12,
              decoration: BoxDecoration(
                color: Color(0xFFFEFEFE),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Row(
                children: [
                  Container(
                    width: width * 0.25,
                    height: height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.grey, width: 0.3),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$name',
                        style: textStyleA10,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$price',
                        style: textStyleA6,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$date',
                        style: textStyleA6,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
