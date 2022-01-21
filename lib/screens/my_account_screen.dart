import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:mawiin/widgets/commercial_info.dart';
import 'package:mawiin/widgets/personal_info.dart';
import 'package:provider/provider.dart';



class MyAccountScreen extends StatelessWidget {
  static const String routeName = "/MyAccountScreen";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var helper = Provider.of<HelperM>(context,listen: true);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            child: Image.asset(
              'assets/images/back.png',
              fit: BoxFit.cover,
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BottomBar(
                                        index: 0,
                                      ))),
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
                          "حسابي",
                          style: textStyleM6,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_forward)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            helper.MyAccountScreenCommercial = !helper.MyAccountScreenCommercial;
                          },
                          child: Material(
                            elevation: 1,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            child: Container(
                              alignment: Alignment.center,
                              width: width * 0.46,
                              height: 38,
                              decoration: BoxDecoration(
                                  color: helper.MyAccountScreenCommercial ? colorM25 : Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomRight: Radius.circular(16))),
                              child: Text(
                                'معلومات شخصية',
                                style: TextStyle(
                                    color: helper.MyAccountScreenCommercial
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            helper.MyAccountScreenCommercial = !helper.MyAccountScreenCommercial;
                          },
                          child: Material(
                            elevation: 1,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16)),
                            child: Container(
                              alignment: Alignment.center,
                              width: width * 0.46,
                              height: 38,
                              decoration: BoxDecoration(
                                  color: helper.MyAccountScreenCommercial ? Colors.white : colorM25,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16))),
                              child: Text(
                                'معلومات تجارية',
                                style: TextStyle(
                                    color: helper.MyAccountScreenCommercial
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    !helper.MyAccountScreenCommercial ? CommercialInfo() : PersonalInfo(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
