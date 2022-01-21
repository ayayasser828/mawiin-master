import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/screens/registration1_screen.dart';
import 'package:mawiin/services/auth.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:provider/provider.dart';



class WalkthroughScreen extends StatelessWidget {
  static const String routeName = "/WalkthroughScreen";
  static final List<String> imgList = [
    "assets/images/walk1.png",
    "assets/images/moto.png",
    "assets/images/driv.png",
  ];
  static final List<String> titleList = [
    "أفضل العروض",
    "متابعة طلبك",
    "الدفع الإلكترونى",
  ];
  static final List<String> textList = [
    "نقدم لك أفضل العروض المتواجدة بشكل حصري "
        "من خلال تطبيق مون عبر التعاقد مع أفضل العلامات التجارية",
    "يمكنك تتبع طلبك لحظة بلحظة "
        "بدء من مرحلة الاعداد حتى مرحلة الاستلام",
    "يمكنك الدفع إلكترونيا أو الدفع عند الإستلام عبر أكبر منصة موثقة",
  ];


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var _current = Provider.of<HelperM>(context,listen: true);
    return Scaffold(
      backgroundColor: colorM6,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.75,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: CarouselSlider(
                  items: imgList
                      .map((item) => Container(
                    width: width,
                    margin: EdgeInsets.only(
                        right: 15, top: height * 0.04),
                    child: Column(
                      children: <Widget>[
                        Text(
                          titleList[_current.walkthroughCurrentIndex],
                          style: textStyleM28,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Image.asset(
                          item,
                          width: width,
                          height: height * 0.5,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          textList[_current.walkthroughCurrentIndex],
                          textAlign: TextAlign.center,
                          style: textStyleM4,
                        )
                      ],
                    ),
                  ))
                      .toList(),
                  options: CarouselOptions(
                      height: height * 0.25,
                      viewportFraction: 1,
                      disableCenter: true,
                      autoPlay: false,
                      reverse: true,
                      aspectRatio: 1.33 / 1,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      onPageChanged: (index, reason) {
                        _current.walkthroughCurrentIndex = index;
                      }),
                ),
              ),
            ),
            Container(
              width: width,
              height: height*0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 7.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current.walkthroughCurrentIndex == index ? colorM5 : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: height*0.02,
            ),
            SizedBox(
              height: height * 0.065,
              width: width * 0.9,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    )),
                onPressed: () async {
                   await Firebase.initializeApp();
                  if(Auth().auth.currentUser == null){
                    Navigator.of(context)
                        .pushNamed(Registration1Screen.routeName);
                  }
                  else {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomBar(index: 3,)));
                  }
                },
                child: Text("أبدأ"),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
