import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/cart.dart';
import 'package:mawiin/providers/carts.dart';
import 'package:mawiin/screens/payment_options.dart';
import 'package:mawiin/widgets/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var _carts = Provider.of<Carts>(context).list;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.12,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      child: Image.asset(
                        "assets/images/cover4.png",
                        fit: BoxFit.cover,
                        width: width,
                        height: height,
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          "العربة",
                          style: textStyleM20,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "المراجعة والدفع",
                    style: textStyleM21,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: width,
                  height: height * 0.57,
                  child: ListView.builder(
                      itemCount: _carts.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                        return CartItem(
                          cart: _carts[index],
                        );
                      })),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "المجموع",
                      style: textStyleM22,
                    ),
                    Row(
                      children: [
                        Text(
                          "${158.2}",
                          style: textStyleM16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "SAR",
                          style: textStyleM2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                width: width * 0.9,
                height: height * 0.055,
                child: RaisedButton(
                  elevation: 0,
                  color: colorM6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    Navigator.of(context).pushNamed(PaymentOptions.routeName);
                  },
                  child: Text(
                    "الدفع",
                    style: textStyleM4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
