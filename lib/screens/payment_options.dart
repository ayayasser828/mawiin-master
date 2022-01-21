import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/screens/location.dart';
import 'package:mawiin/screens/online_payment.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:provider/provider.dart';

class PaymentOptions extends StatelessWidget {
  static const String routeName = "/PaymentOptions";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var helper = Provider.of<HelperM>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: width,
            height: height,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width,
                    height: height * 0.62,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width,
                          color: Colors.transparent,
                          height: height * 0.4,
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
                                  height: height * 0.2,
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  width: width,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) => BottomBar(
                                                  index: 0,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: 26,
                                            height: 25,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  bottom: 0,
                                                  left: 0,
                                                  child: Image.asset(
                                                    "assets/images/basket.png",
                                                    width: 15.38,
                                                    height: 18,
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  right: 0,
                                                  child: Container(
                                                    width: 18,
                                                    height: 18,
                                                    child: Center(
                                                      child: Text(
                                                        "2",
                                                        style: textStyleM11,
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: colorM1,
                                                        shape: BoxShape.circle),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "خيارات الدفع",
                                          style: textStyleM6,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: width * 0.7,
                                  height: height * 0.25,
                                  child: Image.asset(
                                    "assets/images/pay.png",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: colorM11,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "جدة - المملكة العربية السعودية - برج الكرم - الدور ال 13",
                                style: textStyleM21,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: colorM11,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  "45-30 دقيقة",
                                  style: textStyleM21,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3.0,
                              blurRadius: 2,
                              color: Colors.white)
                        ],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        )),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                              onTap: () {
                                helper.PaymentOptionsDetials =
                                    !helper.PaymentOptionsDetials;
                              },
                              child: Icon(
                                Icons.drag_handle,
                                color: colorM3,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          helper.PaymentOptionsDetials
                              ? Container()
                              : Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "المجموع  الفرعي",
                                            style: textStyleM21,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "255.2",
                                                style: textStyleM23,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "SAR",
                                                style: textStyleA8,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height*0.03,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "رسوم التوصيل",
                                            style: textStyleM21,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "25.2",
                                                style: textStyleM23,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "SAR",
                                                style: textStyleA8,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: width * 0.8,
                                      child: Divider(),
                                    )
                                  ],
                                ),
                          SizedBox(
                            height: height*0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                      "305.2",
                                      style: textStyleM22,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "SAR",
                                      style: textStyleM2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height*0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 20, right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: width * 0.45,
                                  height: 50,
                                  child: RaisedButton(
                                    elevation: 0,
                                    color: colorM6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(OnlinePayment.routeName);
                                    },
                                    child: Text(
                                      "الدفع الإلكتروني",
                                      style: textStyleM4,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.44,
                                  height: 50,
                                  child: RaisedButton(
                                    elevation: 0,
                                    color: colorM23,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(Location.routeName);
                                    },
                                    child: Text(
                                      "الدفع عند الإستلام",
                                      style: textStyleM18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
