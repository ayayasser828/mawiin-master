import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/bottom_nav_bar_widget.dart';

class We extends StatelessWidget {
  static const String routeName = "/We";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/cover4.png",
              fit: BoxFit.cover,
              width: width,
              height: height * 0.2,
            ),
            Positioned(
                top: 60,
                child: Text(
                  "من نحن",
                  style: textStyleY2,
                  textAlign: TextAlign.center,
                )),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[350]),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15))),
              width: width,
              height: height * 0.8,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    width: width,
                    height: height * 0.6,
                    child: SingleChildScrollView(
                      child: Text(
                        "يمكنك أن تستخدم خدماتنا بطرق شتى لإدارة خصوصيتك. على سبيل المثال، يمكنك الاشتراك في حساب Google إذا أردت إنشاء محتوى وإدارته، مثل الرسائل الإلكترونية والصور أو عرض مزيد من نتائج البحث ذات الصلة. ويمكنك أيضًا استخدام الكثير من خدمات Google عندما تسجل الخروج أو بدون إنشاء حساب من الأساس، مثل البحث على Google  أو مشاهدة فيديوهات Youtube كما يمكنك أن تختار تصفّح الويب بشكلٍ خاص مستخدمًا متصفّح Chrome وبإمكانك، عبر خدماتنا، أن تضبط إعدادات الخصوصية للتحكم في ما نجمعه من معلومات وكيفية استخدامها."
                        "يمكنك أن تستخدم خدماتنا بطرق شتى لإدارة خصوصيتك. على سبيل المثال، يمكنك الاشتراك في حساب Google إذا أردت إنشاء محتوى وإدارته، مثل الرسائل الإلكترونية والصور أو عرض مزيد من نتائج البحث ذات الصلة. ويمكنك أيضًا استخدام الكثير من خدمات Google عندما تسجل الخروج أو بدون إنشاء حساب من الأساس، مثل البحث على Google  أو مشاهدة فيديوهات Youtube كما يمكنك أن تختار تصفّح الويب بشكلٍ خاص مستخدمًا متصفّح Chrome وبإمكانك، عبر خدماتنا، أن تضبط إعدادات الخصوصية للتحكم في ما نجمعه من معلومات وكيفية استخدامها."
                        "يمكنك أن تستخدم خدماتنا بطرق شتى لإدارة خصوصيتك. على سبيل المثال، يمكنك الاشتراك في حساب Google إذا أردت إنشاء محتوى وإدارته، مثل الرسائل الإلكترونية والصور أو عرض مزيد من نتائج البحث ذات الصلة. ويمكنك أيضًا استخدام الكثير من خدمات Google عندما تسجل الخروج أو بدون إنشاء حساب من الأساس، مثل البحث على Google  أو مشاهدة فيديوهات Youtube كما يمكنك أن تختار تصفّح الويب بشكلٍ خاص مستخدمًا متصفّح Chrome وبإمكانك، عبر خدماتنا، أن تضبط إعدادات الخصوصية للتحكم في ما نجمعه من معلومات وكيفية استخدامها."
                        "يمكنك أن تستخدم خدماتنا بطرق شتى لإدارة خصوصيتك. على سبيل المثال، يمكنك الاشتراك في حساب Google إذا أردت إنشاء محتوى وإدارته، مثل الرسائل الإلكترونية والصور أو عرض مزيد من نتائج البحث ذات الصلة. ويمكنك أيضًا استخدام الكثير من خدمات Google عندما تسجل الخروج أو بدون إنشاء حساب من الأساس، مثل البحث على Google  أو مشاهدة فيديوهات Youtube كما يمكنك أن تختار تصفّح الويب بشكلٍ خاص مستخدمًا متصفّح Chrome وبإمكانك، عبر خدماتنا، أن تضبط إعدادات الخصوصية للتحكم في ما نجمعه من معلومات وكيفية استخدامها.",
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: width * 0.95,
                  height: 45,
                  child: RaisedButton(
                    elevation: 0,
                    color: colorM6,
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => BottomBar(
                                    index: 3,
                                  )),
                          (route) => false);
                    },
                    child: Text(
                      "رجوع",
                      style: textStyleM4,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
