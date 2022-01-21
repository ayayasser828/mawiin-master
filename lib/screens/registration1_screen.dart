import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/screens/registration2_screen.dart';
import 'package:mawiin/services/auth.dart';

class Registration1Screen extends StatefulWidget {
  static const String routeName = "/Registration1Screen";

  @override
  _Registration1ScreenState createState() => _Registration1ScreenState();
}

class _Registration1ScreenState extends State<Registration1Screen> {

  String _phone = Auth.phoneN;
  GlobalKey<ScaffoldState> scaffoldKey;
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/back.png",
            fit: BoxFit.fill,
            width: width,
            height: height,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 187.42,
                      width: 184.69,
                      child: Image.asset(
                        "assets/images/cover.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Column(
                      children: [
                        Text(
                          "تسجيل الدخول",
                          style: textStyleA14,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "أدخل رقم جوالك",
                          style: textStyleM2,
                        ),
                        Text(
                          "من فضلك أدخل رقم جوالك لإرسال كود التفعيل",
                          style: textStyleM3,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Form(
                          key: _formKey,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Container(
                              width: width,
                              height: height * 0.12,
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                validator: (input){
                                  if (input.isEmpty){
                                    return'من فضلك ادخل رقم الجوال';
                                  }
                                  else if(input.length != 9){
                                    return 'رقم الجوال غير صالح';
                                  }
                                  return null;
                                },
                                onSaved: (input) => _phone = input,
                                onChanged: (input){
                                  setState(() {
                                    _phone = input;
                                  });
                                },
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.symmetric(vertical: 5),
                                    hintText: 'رقم الجوال',
                                    hintStyle: textStyleM3,
                                    filled: true,
                                    fillColor: colorA2,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(24),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.phone_in_talk,
                                      color: colorA1,
                                    )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: width,
                          height: height * 0.06,
                          child: RaisedButton(
                            elevation: 0,
                            color: colorM6,
                            child: Text(
                              'التالي',
                              style: textStyleM23.copyWith(color: Colors.white),
                            ),
                            onPressed: () async {
                              Auth.phoneN = "$_phone";
                              if(_formKey.currentState.validate()) {
                                Auth().initVerifyCall(_phone, context);
                                Navigator.of(context).pushNamed(Registration2Screen.routeName);
                              }

                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

