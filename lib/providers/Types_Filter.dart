
import 'package:flutter/cupertino.dart';
import 'package:mawiin/models/type_filter.dart';

class TypesFilter with ChangeNotifier{
  List<TypeFilter> _product = [
    TypeFilter(name: "معلبات",selected: true),
    TypeFilter(name: "زيت الطعام",selected: false),
    TypeFilter(name: "معلبات",selected: false),
    TypeFilter(name: "زيت الطعام",selected: false),
  ];

  List<TypeFilter> _type = [
    TypeFilter(name: "أرما",selected: true),
    TypeFilter(name: "البركة",selected: false),
    TypeFilter(name: "أولين",selected: false),
    TypeFilter(name: "أراب",selected: false),
  ];

  List<TypeFilter> get itemProduct {
    return _product;
  }

  List<TypeFilter> get itemType {
    return _type;
  }
}