import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/history_product.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:mawiin/widgets/history_product_item.dart';

class History extends StatelessWidget {
  static const String routeName = "/History";

  final List<HistoryProduct> _products = [
    HistoryProduct(
        name: 'أرز الضحى',
        image: 'assets/images/mainItema1.png',
        price: 402.45,
        date: '22 فبراير 2020'),
    HistoryProduct(
        name: 'هيد اند شولدرز',
        image: 'assets/images/mainItem2.png',
        price: 402.45,
        date: '22 فبراير 2020'),
    HistoryProduct(
        name: 'زيت عافية 1لتر',
        image: 'assets/images/mainItem3.png',
        price: 402.45,
        date: '22 فبراير 2020'),
    HistoryProduct(
        name: 'برنجلز',
        image: 'assets/images/mainItem4.png',
        price: 402.45,
        date: '22 فبراير 2020'),
    HistoryProduct(
        name: 'ليز',
        image: 'assets/images/mainItem5.png',
        price: 402.45,
        date: '22 فبراير 2020'),
    HistoryProduct(
        name: 'أرز الضحى',
        image: 'assets/images/mainItem1.png',
        price: 402.45,
        date: '22 فبراير 2020'),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => BottomBar(
                                        index: 0,
                                      )));
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
                                "عمليات الشراء السابقة",
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
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'إجمالي مشتريات شهر فبراير',
                        style: textStyleA11,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        height: height * 0.65,
                        child: ListView.builder(
                          itemCount: _products.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: ((context, i) => HistoryProductItem(
                                image: _products[i].image,
                                name: _products[i].name,
                                price: _products[i].price,
                                date: _products[i].date,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'الإجمالي',
                              style: textStyleA15,
                            ),
                            Text(
                              '1254.67 SAR',
                              style: textStyleM3,
                            ),
                          ],
                        ),
                      ),
                    ],
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
