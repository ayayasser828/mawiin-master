import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/screens/cart.dart';
import 'package:mawiin/screens/favorite.dart';
import 'package:mawiin/screens/main_page.dart';
import 'package:mawiin/screens/offers.dart';

class BottomBar extends StatefulWidget {
  final int index;

  BottomBar({this.index});

  static const String routeName = "/BottomBar";

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 3;

  @override
  void initState() {
    _currentIndex = widget.index;
    // TODO: implement initState
    super.initState();
  }

  final List<Widget> _children = [
    CartScreen(),
    Favorite(),
    Offers(),
    MainPageScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: height * 0.1,
        child: BottomNavigationBar(
          onTap: onTabTapped,
          selectedItemColor: colorM1,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              title: Text(''),
              icon: FaIcon(FontAwesomeIcons.shoppingCart),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Stack(
                children: [
                  FaIcon(FontAwesomeIcons.heart),
                  Positioned(
                    bottom: 0.0,
                    left: 10,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '0',
                        style: textStyleA3.copyWith(color: Color(0xFFFF3600)),
                      ),
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: FaIcon(FontAwesomeIcons.fire),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: FaIcon(FontAwesomeIcons.home),
            ),
          ],
        ),
      ),
    );
  }
}
