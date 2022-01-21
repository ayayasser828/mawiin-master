import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';

class CommercialInfo extends StatelessWidget {
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
              height: height*0.5,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
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
                              hintText: 'اسم العمل',
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
                                Icons.business_center,
                                color: colorA1,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Center(
                      child: Container(
                        width: width * 0.8,
                        height: 47,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              hintText: 'اسم الوظيفة',
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
                                Icons.card_travel,
                                color: colorA1,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height*0.2,
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
