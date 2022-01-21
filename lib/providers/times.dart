import 'package:flutter/cupertino.dart';
import 'package:mawiin/models/time.dart';

class Times with ChangeNotifier {
  List<Time> _list = [
    Time(time: '06:30', timeType: 'ص'),
    Time(time: '7:00', timeType: 'م'),
    Time(time: '7:30', timeType: 'ص'),
  ];

  List<Time> get item {
    return _list;
  }
}
