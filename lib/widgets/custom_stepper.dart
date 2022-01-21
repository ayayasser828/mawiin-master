import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:mawiin/constant/constant.dart';

class CustomStepper extends StatefulWidget {
  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorM7,
                            ),
                            child: Icon(
                              Icons.move_to_inbox,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Dash(
                                direction: Axis.vertical,
                                length: 60,
                                dashLength: 5,
                                dashColor: colorM1),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'تم قبول طلبك',
                            style: textStyleA6,
                          ),
                          Text(
                            '10 أكتوبر 2020 - 10:30 مساء',
                            style: textStyleA7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorM1,
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorM7,
                            ),
                            child: Icon(
                              Icons.store_mall_directory,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Dash(
                                direction: Axis.vertical,
                                length: 60,
                                dashLength: 5,
                                dashColor: colorM3),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'تم إعداد طلبك',
                            style: textStyleA6,
                          ),
                          Text(
                            '10 أكتوبر 2020 - 10:45 مساء',
                            style: textStyleA7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorM1,
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorM7,
                            ),
                            child: Icon(
                              Icons.directions_car,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Dash(
                                direction: Axis.vertical,
                                length: 60,
                                dashLength: 5,
                                dashColor: colorM3),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'سيتم توصيل طلبك',
                            style: textStyleA6,
                          ),
                          Text(
                            '10 أكتوبر 2020 - 11:00 مساء',
                            style: textStyleA7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorM1.withOpacity(0.5),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorM7,
                            ),
                            child: Icon(
                              Icons.done_all,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'تم التسليم',
                            style: textStyleA6,
                          ),
                          Text(
                            '10 أكتوبر 2020 - 10:45 مساء',
                            style: textStyleA7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorM1.withOpacity(0.5),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
