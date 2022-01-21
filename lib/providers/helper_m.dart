



import 'package:flutter/cupertino.dart';

class HelperM with ChangeNotifier {

  int _mainPageCurrentIndex = 0;
  int _walkthroughCurrentIndex = 0;
  bool _selectProductFilter = false;
  bool _AddPaymentMethodValue = false;
  bool _selectTypeFilter = false;
  bool _MyAccountScreenCommercial = false;
  bool _selectPriceFilter = false;
  bool _PaymentOptionsdetials = true;
  double _lowValue = 0.0;
  double _highValue = 10000;
  int _productDetailsScreenCurrentIndex = 0;
  int _countProductDestials = 0;
  int _OnlinePaymentIndex = 0;




  bool get selectPriceFilter => _selectPriceFilter;
  bool get selectTypeFilter => _selectTypeFilter;
  bool get selectProductFilter => _selectProductFilter;
  bool get AddPaymentMethodValue => _AddPaymentMethodValue;
  bool get PaymentOptionsDetials => _PaymentOptionsdetials;
  bool get MyAccountScreenCommercial => _MyAccountScreenCommercial;
  int get walkthroughCurrentIndex => _walkthroughCurrentIndex;
  int get mainPageCurrentIndex => _mainPageCurrentIndex;
  double get highValue => _highValue;
  double get lowValue => _lowValue;
  int get productDetailsScreenCurrentIndex => _productDetailsScreenCurrentIndex;
  int get countProductDestials => _countProductDestials;
  int get OnlinePaymentIndex => _OnlinePaymentIndex;




  set mainPageCurrentIndex(int value) {
    _mainPageCurrentIndex = value;
    notifyListeners();
  }
  set walkthroughCurrentIndex(int value) {
    _walkthroughCurrentIndex = value;
    notifyListeners();
  }
  set OnlinePaymentIndex(int value) {
    _OnlinePaymentIndex = value;
    notifyListeners();
  }
  set selectProductFilter(bool value) {
    _selectProductFilter = value;
    notifyListeners();
  }
  set AddPaymentMethodValue(bool value) {
    _AddPaymentMethodValue = value;
    notifyListeners();
  }
  set PaymentOptionsDetials(bool value) {
    _PaymentOptionsdetials = value;
    notifyListeners();
  }
  set selectTypeFilter(bool value) {
    _selectTypeFilter = value;
    notifyListeners();
  }
  set MyAccountScreenCommercial(bool value) {
    _MyAccountScreenCommercial = value;
    notifyListeners();
  }
  set selectPriceFilter(bool value) {
    _selectPriceFilter = value;
    notifyListeners();
  }
  set highValue(double value) {
    _highValue = value;
    notifyListeners();
  }
  set lowValue(double value) {
    _lowValue = value;
    notifyListeners();
  }
  set productDetailsScreenCurrentIndex(int value) {
    _productDetailsScreenCurrentIndex = value;
    notifyListeners();
  }



  void add() {
    this._countProductDestials = this._countProductDestials + 1;
    notifyListeners();
  }

  void remove() {
    if (this._countProductDestials > 0) {
      this._countProductDestials = this._countProductDestials - 1;
    }
    notifyListeners();
  }


  void NavRoute(BuildContext context, Widget screen){
    Navigator.of(context).push(_createRoute(screen));
  }

  Route _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // AnimationController _controller = AnimationController(
        //   duration:  Duration(milliseconds: 1000),
        // );
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.easeIn;
        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }







}