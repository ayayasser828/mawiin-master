import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/date.dart';
import 'package:mawiin/providers/dates.dart';
import 'package:mawiin/providers/times.dart';
import 'package:provider/provider.dart';

class DeliveryTime extends StatefulWidget {
  static const String routeName = "/DeliveryTime";

  @override
  _DeliveryTimeState createState() => _DeliveryTimeState();
}

class _DeliveryTimeState extends State<DeliveryTime> {
  bool isClicked = false;

  void dateClicked() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    var dates = Provider.of<Dates>(context).item;
    var _times = Provider.of<Times>(context).item;

    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Image.asset(
                          "assets/images/cover4.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 30,
                        child: Container(
                          width: width,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
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
                                  Text(
                                    "تحديد التوقيت",
                                    style: textStyleM6,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.arrow_forward)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.2,
                        height: height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.date_range,
                              color: colorM1,
                            ),
                            Text(
                              'التاريخ',
                              style: textStyleM18,
                            )
                          ],
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Container(
                          width: width,
                          height: height * 0.15,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: dates.length,
                            itemBuilder: ((context, index) {
                              return ChangeNotifierProvider.value(
                                value: dates[index],
                                child: Consumer<Date>(
                                  builder: (context, date, child) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: InkWell(
                                        onTap: () {
                                          date.dateClicked();
                                        },
                                        child: Container(
                                          width: width * 0.3,
                                          decoration: BoxDecoration(
                                            color: colorM6,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                width: 3,
                                                color: date.isClicked
                                                    ? colorA14
                                                    : colorA13),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                date.month,
                                                style: textStyleA12,
                                              ),
                                              Text(
                                                "${date.dayNum}",
                                                style: textStyleA12.copyWith(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                date.day,
                                                style: textStyleA12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.22,
                        height: height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: colorM1,
                            ),
                            Text(
                              'التوقيت',
                              style: textStyleM18,
                            )
                          ],
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Container(
                          width: width,
                          height: height * 0.15,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _times.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                    color: colorM6,
                                    borderRadius: BorderRadius.circular(20),
                                    border:
                                        Border.all(width: 3, color: colorA13),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        _times[index].time,
                                        style: textStyleA12,
                                      ),
                                      Text(
                                        _times[index].timeType,
                                        style: textStyleA12,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                          // child: ,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.15,
                  child: Center(
                    child: SizedBox(
                      width: width * 0.9,
                      height: height * 0.06,
                      child: RaisedButton(
                        elevation: 0,
                        color: colorA3,
                        child: Text(
                          'تأكيد',
                          style: textStyleM3.copyWith(color: Colors.white),
                        ),
                        onPressed: () {
                          // Navigator.of(context).pushNamed(Registration2Screen.routeName);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
