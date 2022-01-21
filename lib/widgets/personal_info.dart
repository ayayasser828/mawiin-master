import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              height: height * 0.5,
              child: Column(
                children: [
                  SizedBox(
                    height: height*0.06,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Center(
                      child: Container(
                        width: width * 0.8,
                        height: 47,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              hintText: 'تكوين',
                              hintStyle: textStyleM3,
                              filled: true,
                              fillColor: colorA2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: colorA1,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Center(
                          child: Container(
                            width: width * 0.55,
                            height: 47,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 5),
                                  hintText: '55618066',
                                  hintStyle: textStyleM3,
                                  filled: true,
                                  fillColor: colorA2,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
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
                      SizedBox(width: width * 0.05),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Center(
                          child: Container(
                            width: width * 0.2,
                            height: 47,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5),
                                hintText: '996+',
                                hintStyle: textStyleM3,
                                filled: true,
                                fillColor: colorA2,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Center(
                      child: Container(
                        width: width * 0.8,
                        height: 47,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              hintText: 'info@takwen.sa',
                              hintStyle: textStyleM3,
                              filled: true,
                              fillColor: colorA2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: colorA1,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.2,
              child: Center(
                child: SizedBox(
                  width: width * 0.8,
                  height: 50,
                  child: RaisedButton(
                    color: colorA3,
                    child: Text(
                      'حفظ التغييرات',
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
    );
  }
}
