import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/payment_card.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:mawiin/widgets/custom_chart_month.dart';
import 'package:mawiin/widgets/custom_chart_week.dart';
import 'package:mawiin/widgets/pay_card.dart';
import 'package:provider/provider.dart';


class OnlinePayment extends StatelessWidget{

  static const String routeName = "/OnlinePayment";


  final List<PaymentCard> cards = [
    PaymentCard(
      logo: 'assets/images/pay_logo.png',
      cardNum: '****5675',
    ),
    PaymentCard(
      logo: 'assets/images/pay_logo.png',
      cardNum: '****1234',
    ),
    PaymentCard(
      logo: 'assets/images/pay_logo.png',
      cardNum: '****7572',
    ),
    PaymentCard(
      logo: 'assets/images/pay_logo.png',
      cardNum: '****5128',
    ),
  ];

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
                          bottomLeft: Radius.circular(30)),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.3,
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
                        textDirection: TextDirection.ltr,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.arrow_back)),
                              Text(
                                "المحفظة",
                                style: textStyleM6,
                              ),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.0,
                    bottom: 0.0,
                    child: Text(
                      'المحافظ الإلكترونية الخاصة بي',
                      style: textStyleA1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: width,
                height: height * 0.25,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      return PayCard(
                        cardNum: cards[index].cardNum,
                        logo: cards[index].logo,
                      );
                    }),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'نشاط المحفظة',
                  style: textStyleA1,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                     helper.OnlinePaymentIndex =0;
                    },
                    child: Container(
                      width: 94,
                      height: 33,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: helper.OnlinePaymentIndex == 0 ? colorM6 : colorA8,
                      ),
                      child: Text(
                        'الأسبوع',
                        style: textStyleA12,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      helper.OnlinePaymentIndex =1;
                    },
                    child: Container(
                      width: 94,
                      height: 33,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: helper.OnlinePaymentIndex ==1 ? colorM6 : colorA8,
                      ),
                      child: Text(
                        'الشهر',
                        style: textStyleA12,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      helper.OnlinePaymentIndex =2;
                    },
                    child: Container(
                      width: 94,
                      height: 33,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: helper.OnlinePaymentIndex ==2 ? colorM6 : colorA8,
                      ),
                      child: Text(
                        'السنة',
                        style: textStyleA12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: helper.OnlinePaymentIndex ==1
                    ? Container(
                        width: width,
                        height: height * 0.27,
                        child: CustomChartWeek(),
                      )
                    : helper.OnlinePaymentIndex ==2
                        ? Container(
                            width: width,
                            height: height * 0.27,
                            child: CustomChartMonth(),
                          )
                        : Container(
                            width: width,
                            height: height * 0.27,
                            // child: CustomChartYear(),
                          ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'عرض بمزيد من التفصيل',
                  style: textStyleA11,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.06,
                  child: RaisedButton(
                    elevation: 0,
                    color: colorA3,
                    child: Text(
                      'دفع',
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
              // SizedBox(height: height*0.03,),
            ],
          ),
        ),
      ),
    );
  }
}
