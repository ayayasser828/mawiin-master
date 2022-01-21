import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/user_preferences.dart';
import 'package:mawiin/screens/add_payment_method.dart';
import 'package:mawiin/screens/history.dart';
import 'package:mawiin/screens/my_account_screen.dart';
import 'package:mawiin/screens/registration1_screen.dart';
import 'package:mawiin/screens/system_screen.dart';
import 'package:mawiin/screens/track_order.dart';
import 'package:mawiin/screens/we.dart';
import 'package:mawiin/services/auth.dart';


class Menu extends StatelessWidget {
   UserPreferences userPreferences;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: SizedBox(
        width: width * 0.65,
        height: height,
        child: Drawer(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: BoxDecoration(
                color: colorM6,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              width: width * 0.4,
              height: height,
              child: ListView(
                children: [
                  Container(
                      width: 288,
                      height: 177,
                      decoration: BoxDecoration(
                          color: colorA11,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                              AssetImage('assets/images/user.png'),
                              radius: 29,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User',
                                  style: textStyleA12,
                                ),
                                Text(
                                  'User@gmail.com',
                                  style: textStyleA12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: height*0.03,
                  ),
                  Container(
                    height: height * 0.43,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(MyAccountScreen.routeName);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: colorA4,
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'حسابي',
                                  style: textStyleA4,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AddPaymentMethod.routeName);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.style,
                                  color: colorA4,
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'اضافة محفظة',
                                  style: textStyleA4,
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(TrackOrder.routeName);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.directions_car,
                                  color: colorA4,
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'تتبع طلبك',
                                  style: textStyleA4,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(History.routeName);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  color: colorA4,
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'عمليات الشراء السابقة',
                                  style: textStyleA4,
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: colorA4,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Text(
                                'الإشعارات',
                                style: textStyleA4,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone_in_talk,
                                color: colorA4,
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Text(
                                'تواصل معنا',
                                style: textStyleA4,
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(We.routeName);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/mawin_logo.png',
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'من نحن',
                                  style: textStyleA4,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(System.routeName);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/mawin_logo.png',
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'سياسة الاستخدام',
                                  style: textStyleA4,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            UserPreferences().removeUser();
                            Navigator.of(context).pushNamed(Registration1Screen.routeName);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Icon(Icons.exit_to_app,color: colorA4,),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'تسجيل الخروج',
                                  style: textStyleA4,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.12,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.05,
                    child: Text(
                      'Copyright TAKWEN 2020',
                      style: textStyleA12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
