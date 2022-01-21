import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/classifications.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:mawiin/widgets/menu.dart';
import 'package:provider/provider.dart';

import 'filter.dart';
import 'main_page2.dart';



class MainPageScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  static final List<String> imgList = [
    'https://image.freepik.com/free-vector/food-sale-discount-banner-template-promotion_71745-125.jpg',
    'https://tfckw.files.wordpress.com/2010/10/discount.png',
  ];

  List<Item> _item = [
    Item(
        name: "مشعلل حولك",
        image: "assets/images/ic_whatshot.png",
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [const Color(0xffFFEBB2), const Color(0xffFFC51E)], //
          tileMode: TileMode.repeated,
        )),
    Item(
        name: "طلباتك معانا",
        image: "assets/images/clock.png",
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [const Color(0xffFFDBDB), const Color(0xffFF4B4B)], //
          tileMode: TileMode.repeated,
        )),
    Item(
        name: "قمة التوفير",
        image: "assets/images/hand.png",
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [const Color(0xffE4FFCC), const Color(0xff92FF34)], //
          tileMode: TileMode.repeated,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var _classifications =
        Provider.of<Classifications>(context, listen: true).item;
    var _current = Provider.of<HelperM>(context,listen: true);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      endDrawer: new Menu(),
      key: _scaffoldKey,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                height: height * 0.3,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        width: width,
                        height: height * 0.35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          child: Image.asset(
                            "assets/images/cover4.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Container(
                        width: width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  _scaffoldKey.currentState.openEndDrawer();
                                },
                                child: Image.asset(
                                  "assets/images/menu.png",
                                  width: 24,
                                  height: 18,
                                ),
                              ),
                              Text(
                                "الصفحة الرئيسية",
                                style: textStyleM6,
                              ),
                              InkWell(
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.15,
                      left: 20,
                      right: 20,
                      child: Container(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width * 0.7,
                              height: height * 0.07,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(vertical: 5),
                                  hintText: 'البحث',
                                  hintStyle: textStyleM3,
                                  filled: true,
                                  fillColor: colorM5,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: colorA1,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(FilterScreen.routeName);
                              },
                              child: Container(
                                width: 50,
                                height: height * 0.06,
                                decoration: BoxDecoration(
                                    color: colorM29,
                                    borderRadius: BorderRadius.circular(9)),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.slidersH,
                                    size: 20,
                                    color: colorM5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: height*0.6,
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      actions: <Widget>[
                        new Container(),
                      ],
                      expandedHeight: (height * 0.2) +15,
                      toolbarHeight:1,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          width: width,
                          height: ( height * 0.2) + 15,
                          child: Column(
                            children: [
                              Directionality(
                                textDirection: TextDirection.ltr,
                                child: CarouselSlider(
                                  items: imgList
                                      .map((item) => Container(
                                        margin: EdgeInsets.only(right: 5.0,left: 5.0),
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(
                                                    20.0)),
                                            child: Image.network(item,
                                                fit: BoxFit.cover,
                                                width: width)),
                                      ))
                                      .toList(),
                                  options: CarouselOptions(
                                      height: height * 0.2,
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
                                        _current.mainPageCurrentIndex = index;
                                      }),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: imgList.map((url) {
                                  int index = imgList.indexOf(url);
                                  return Container(
                                    width: 10.0,
                                    height: 10.0,
                                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                      _current.mainPageCurrentIndex == index ? colorM1 : colorM8,
                                    ),
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text("الأقسام", style: textStyleM25),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: width,
                            height: height -
                                (height * 0.55),
                            child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: _classifications.length,
                                gridDelegate:
                                new SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 16,
                                    mainAxisSpacing: 8),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => MainPage2Screen(
                                                  name:
                                                  _classifications[index].name,
                                                  products: _classifications[index]
                                                      .products,
                                                )),
                                          );
                                        },
                                        child: Container(
                                          width: 68,
                                          height: 70,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.asset(
                                                _classifications[index].image,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                      Text(
                                        _classifications[index].name,
                                        style: textStyleM17,
                                      )
                                    ],
                                  );
                                }),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String image;
  final LinearGradient linearGradient;

  Item({this.name, this.image, this.linearGradient});
}
