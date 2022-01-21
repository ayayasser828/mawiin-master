import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/providers/user_preferences.dart';
import 'package:mawiin/services/auth.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';




class Registration2Screen extends StatelessWidget {

  String _phone = Auth.phoneN;
  static  String smsCode = '';
  // String userId = Auth().auth.currentUser.uid;
  UserPreferences userPreferences;

  static const String routeName = "/Registration2Screen";
  StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
  TextEditingController textEditingController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Image.asset("assets/images/back.png",fit: BoxFit.cover,width: width,
            height: height,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: width,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height:height*0.28,
                    width: width,
                    child: Image.asset(
                      "assets/images/cover.png",
                    ),
                  ),
                  Text("تسجيل الدخول",style: textStyleA14,textAlign: TextAlign.center,),
                  SizedBox(height: height*0.03,),
                  Text("لقد تم إرسال الكود لرقم الجوال",style: textStyleM2,textAlign: TextAlign.center,),
                  Text("وسينتهي خلال دقيقتين",style: textStyleM3,textAlign: TextAlign.center,),
                  SizedBox(height: height*0.03,),
                  Container(
                    width: width * 0.8,
                    height: height*0.08,
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child:  PinCodeTextField(
                        validator: (input){
                          if (input.isEmpty){
                            return'من فضلك ادخل كود التفعيل';
                          }
                          return null;
                        },
                        backgroundColor: Colors.transparent,
                        keyboardType: TextInputType.number,
                        appContext: context,
                        length: 6,
                        obscureText: false ,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderWidth: 1,
                          inactiveColor: colorM4,
                          activeColor: colorM4,
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: height*0.08,
                          fieldWidth: width * 0.1,
                          activeFillColor: colorM4,
                          inactiveFillColor: Colors.green
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        enableActiveFill: false,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onChanged: (value) {
                          print(value);
                          smsCode = value;
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          return true;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.07,),
                  Container(
                    width: width,
                    height: height*0.065,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RaisedButton(
                      elevation: 0,
                      color: colorM6,
                      onPressed: () async {
                        /// save user data
                        Auth.phoneN = _phone;
                          Auth().signInWithPhoneNumber(Registration2Screen.smsCode, context);
                          // print(userId);
                          // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomBar(index: 3,)), (route) => false);
                      },
                      child: Text("تسجيل الدخول",style: textStyleM4,),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(
                        25
                      )),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap:(){
                        },
                          child: Text("إعادة إرسال    ",style: textStyleM5,)),
                      Text("لم تتلقي كود",style: textStyleM3,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
