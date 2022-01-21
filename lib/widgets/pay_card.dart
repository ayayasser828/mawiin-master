import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';

class PayCard extends StatelessWidget {
  final String logo;
  final String cardNum;

  PayCard({this.logo, this.cardNum});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Stack(
          children: [
            Container(
              width: width * 0.75,
              height: height * 0.22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: colorA2,
              ),
            ),
            Positioned(
              bottom: 10.0,
              right: 10,
              child: Text(
                '$cardNum',
                style: textStyleA9,
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(width: 70, height: 70, child: Image.asset(logo)),
            ),
          ],
        ),
      ),
    );
  }
}
