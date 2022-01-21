import 'package:flutter/cupertino.dart';
import 'package:mawiin/models/date.dart';

class Dates with ChangeNotifier {
  List<Date> _list = [
    Date(month: 'أكتوبر', day: 'الاربعاء', dayNum: 06, isClicked: false),
    Date(month: 'أكتوبر', day: 'الخميس', dayNum: 07, isClicked: false),
    Date(month: 'أكتوبر', day: 'الجمعة', dayNum: 08, isClicked: false),
  ];

  List<Date> get item {
    return _list;
  }
}
