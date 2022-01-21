import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = "/ProductDetailsScreen";

  static final List<String> imgList = [
    'https://gepard.io/img/blog/1577449186-product_images_example4.jpg',
    'https://apollo-ireland.akamaized.net/v1/files/3t4irh6tp8va2-EG/image;s=644x461;olx-st/_1_.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var helper = Provider.of<HelperM>(context);
    return Scaffold(
        body: Container(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width,
            height: height * 0.45,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  "assets/images/cover4.png",
                  fit: BoxFit.cover,
                  width: width,
                  height: height * 0.4,
                ),
                Positioned(
                  top: 30,
                  child: Container(
                    width: width * 0.9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back),
                        ),
                        Text(
                          "تفاصيل المنتج",
                          style: textStyleM6,
                        ),
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
                                        color: colorM1, shape: BoxShape.circle),
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
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: width,
                    height: height * 0.3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: CarouselSlider(
                            items: imgList
                                .map((item) => Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 10.0),
                                        child: Container(
                                          width: width * 0.85,
                                          height: height * 0.3,
                                          margin: EdgeInsets.all(5.0),
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0)),
                                              child: Stack(
                                                children: <Widget>[
                                                  Image.network(
                                                    item,
                                                    fit: BoxFit.cover,
                                                    width: width,
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            options: CarouselOptions(
                                height: height * 0.3,
                                viewportFraction: 1,
                                disableCenter: true,
                                autoPlay: true,
                                reverse: true,
                                aspectRatio: 1.33 / 1,
                                enlargeCenterPage: true,
                                autoPlayInterval: Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                onPageChanged: (index, reason) {
                                  helper.productDetailsScreenCurrentIndex =
                                      index;
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: helper.productDetailsScreenCurrentIndex == index
                        ? colorM1
                        : colorM8,
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.3,
            child: Column(
              children: [
                Container(
                  height: height * 0.03,
                  child: Text(
                    "سوبر شيش كباب بقري امريكانا 10",
                    style: textStyleM13,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "المكونات",
                          style: textStyleM13,
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Container(
                            width: width * 0.5,
                            child: Text(
                              'بصل-لحم مفروم-ملح-فلفل-بهارات شواء',
                              textAlign: TextAlign.start,
                              style: textStyleM3,
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "العلامة التجارية",
                          style: textStyleM13,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                            width: width * 0.5,
                            child: Text(
                              'امريكانا',
                              textAlign: TextAlign.start,
                              style: textStyleM3,
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "الوزن",
                          style: textStyleM13,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                            width: width * 0.5,
                            child: Text(
                              '650 جرام',
                              textAlign: TextAlign.start,
                              style: textStyleM3,
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "الكمية",
                          style: textStyleM13,
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          width: width * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  helper.add();
                                },
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: colorM21,
                                      size: 20,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: colorM7,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text(
                                "${helper.countProductDestials}",
                                style: textStyleM3,
                              ),
                              InkWell(
                                onTap: () {
                                  helper.remove();
                                },
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: colorM21,
                                      size: 20,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: colorM25,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            height: height * 0.15,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: width,
                height: 50,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    SizedBox(
                      width: width,
                      height: 50,
                      child: RaisedButton(
                        elevation: 0,
                        color: colorM6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BottomBar(
                                    index: 0,
                                  )));
                        },
                        child: Text(
                          "أضف إلي العربة - SAR 350 ",
                          style: textStyleM4,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      child: Container(
                        width: 26,
                        height: 25,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Image.asset(
                                "assets/images/shape.png",
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
                                    style: textStyleM15,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: colorM5, shape: BoxShape.circle),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
