import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:provider/provider.dart';



class AddPaymentMethod extends StatelessWidget {
  static const String routeName = "/AddPaymentMethod";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var helper = Provider.of<HelperM>(context,listen: true);
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
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      border: Border.all(color: Colors.grey, width: 0.3),
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
                                "إضافة محفظة",
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
              Container(
                height: height*0.72,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.02),
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              width: width * 0.65,
                              height: height * 0.18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: colorA2,
                              ),
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/images/visa.png',
                                    width: 103.91,
                                    height: 31.89,
                                  )),
                            ),
                            Positioned(
                              bottom: 10.0,
                              right: 10,
                              child: Text(
                                '**** 5675',
                                style: textStyleA9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'رقم الكارت',
                          style: textStyleM3,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.06,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                WhitelistingTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(19),
                              ],
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  hintText: '4567-5436-3455-8965',
                                  hintStyle: textStyleM3,
                                  filled: true,
                                  fillColor: colorA2,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(18),
                                    ),
                                  ),
                                  suffixIcon: Image.asset(
                                    'assets/images/visa.png',
                                    width: 41.7,
                                    height: 12.8,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'اسم صاحب الكارت',
                          style: textStyleM3,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.06,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                hintText: 'عمار عبد الله',
                                hintStyle: textStyleM3,
                                filled: true,
                                fillColor: colorA2,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'سينتهي في',
                          style: textStyleM3,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.06,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                hintText: '22/03',
                                hintStyle: textStyleM3,
                                filled: true,
                                fillColor: colorA2,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'CVV',
                          style: textStyleM3,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.06,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                hintText: '568',
                                hintStyle: textStyleM3,
                                filled: true,
                                fillColor: colorA2,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: width * 0.9,
                          height: height * 0.06,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                child: InkWell(
                                  onTap: () {
                                    helper.AddPaymentMethodValue = !helper.AddPaymentMethodValue;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: colorA2,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: helper.AddPaymentMethodValue
                                        ? Icon(
                                            Icons.check,
                                            color: colorM1,
                                          )
                                        : Icon(
                                            Icons.check_box_outline_blank,
                                            color: colorA2,
                                          ),
                                  ),
                                ),
                              ),
                              Text(
                                'حفظ الكارت لإعادة استخدامه',
                                style: textStyleM3,
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.06,
                  child: RaisedButton(
                    elevation: 0,
                    color: colorA3,
                    child: Text(
                      'إضافة المحفظة',
                      style: textStyleM3.copyWith(color: Colors.white),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
