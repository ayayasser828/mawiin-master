import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/product.dart';
import 'package:mawiin/models/type.dart';
import 'package:mawiin/models/type_filter.dart';
import 'package:mawiin/providers/Types_Filter.dart';
import 'package:mawiin/widgets/product_item2.dart';
import 'package:provider/provider.dart';

class MainPage2Screen extends StatefulWidget {
  final String name;
  final List<Product> products;

  MainPage2Screen({this.name, this.products});

  @override
  _MainPage2ScreenState createState() => _MainPage2ScreenState();
}

class _MainPage2ScreenState extends State<MainPage2Screen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;
  int valueAnimation = 700;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration:  Duration(milliseconds: valueAnimation),
      vsync: this,
    )..forward(from: 0);
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ));

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<TypeProduct> _type2 = [
    TypeProduct(name: "معلبات", selected: true, id: 1),
    TypeProduct(name: "معلبات", selected: false, id: 2),
    TypeProduct(name: "زيت", selected: false, id: 3),
    TypeProduct(name: "حلويات", selected: false, id: 4),
    TypeProduct(name: "خفايف", selected: false, id: 5),
  ];

  void selected(int id) {
    for (int i = 0; i < _type2.length; i++) {
      if (_type2[i].id == id) {
        _type2[i].select();
      } else {
        _type2[i].unSelect();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var _type = Provider.of<TypesFilter>(context).itemType;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: height,
          width: width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: height * 0.2,
                  color: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        "assets/images/cover4.png",
                        fit: BoxFit.cover,
                        width: width,
                        height: height * 0.2,
                      ),
                      Positioned(
                        top: 30,
                        child: Container(
                          width: width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 26,
                                  height: 25,
                                  child: Icon(
                                    Icons.search,
                                    color: colorA1,
                                  ),
                                ),
                                Text(
                                  'المجموعات',
                                  style: textStyleM6,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Icon(Icons.arrow_forward),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          width: width,
                          height: height * 0.04,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _type2.length,
                              itemBuilder: ((context, index) =>
                                  ChangeNotifierProvider.value(
                                    value: _type2[index],
                                    child: Consumer<TypeProduct>(
                                      builder: (contex, type2, child) =>
                                          Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: InkWell(
                                          onTap: () {
                                            selected(type2.id);
                                          },
                                          child: Container(
                                            height: 20,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: type2.selected
                                                    ? BorderSide(
                                                        width: 2.0,
                                                        color: colorM31)
                                                    : BorderSide(
                                                        width: 0.0,
                                                        color:
                                                            Colors.transparent),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                type2.name,
                                                style: type2.selected
                                                    ? textStyleM27
                                                    : textStyleM24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: width,
                    height: 27,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _type.length,
                        itemBuilder: ((context, index) =>
                            ChangeNotifierProvider.value(
                              value: _type[index],
                              child: Consumer<TypeFilter>(
                                builder: (contex, type, child) => Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: () {
                                      type.updateSelected();
                                    },
                                    child: Container(
                                      width: 74,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: type.selected
                                            ? colorM29
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          type.name,
                                          style: type.selected
                                              ? textStyleM4
                                              : textStyleM30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: height - (height * 0.2 + 57),
                  child: ListView.builder(
                      itemCount: widget.products.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                        _controller = AnimationController(
                          duration:  Duration(milliseconds: valueAnimation),
                          vsync: this,
                        )..forward(from: 0);
                        _offsetAnimation = Tween<Offset>(
                          begin: const Offset(-1.0, 0.0),
                          end: const Offset(0.0, 0.0),
                        ).animate(CurvedAnimation(
                          parent: _controller,
                          curve: Curves.decelerate,
                        ));
                        valueAnimation = valueAnimation+200;
                        if(valueAnimation > 3000){
                          valueAnimation = 1000;
                        }
                        return ChangeNotifierProvider.value(
                          value: widget.products[index],
                          child: SlideTransition(
                              position: _offsetAnimation,
                              child: ProductItem2()),
                        );
                      })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
