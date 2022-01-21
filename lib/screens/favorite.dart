import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/product.dart';
import 'package:mawiin/widgets/fav_product%20_item.dart';
import 'package:mawiin/widgets/menu.dart';



class Favorite extends StatelessWidget {
  final List<Product> _products = [
    Product(image: 'assets/images/product1.png'),
    Product(image: 'assets/images/product2.png'),
    Product(image: 'assets/images/sadia.png'),
    Product(image: 'assets/images/product4.png'),
    Product(image: 'assets/images/product1.png'),
    Product(image: 'assets/images/product2.png'),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: Menu(),
      key: _scaffoldKey,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        border: Border.all(color: Colors.grey, width: 0.3),
                      ),
                      width: width,
                      height: height * 0.3,
                      child: Image.asset(
                        "assets/images/cover4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Container(
                        width: width,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _scaffoldKey.currentState.openEndDrawer();
                                  },
                                  child: Image.asset(
                                    "assets/images/menu.png",
                                    width: 24,
                                    height: 18,
                                  ),
                                ),
                                Text(
                                  "المفضلة",
                                  style: textStyleM6,
                                ),
                                Container(
                                  width: 26,
                                  height: 25,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        child: Image.asset(
                                          "assets/images/basket.png",
                                          width: 15.38,
                                          height: 18,
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          child: Center(
                                            child: Text(
                                              "2",
                                              style: textStyleM11,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: colorM1,
                                              shape: BoxShape.circle),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: width,
                height: height * 0.8,
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: _products.length,
                  itemBuilder: (BuildContext context, int index) =>
                      FavProductItem(
                    image: _products[index].image,
                  ),
                  staggeredTileBuilder: (int index) =>
                      StaggeredTile.count(1, index.isEven ? 1 : 2),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
