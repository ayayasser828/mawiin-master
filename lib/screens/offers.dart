import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/product.dart';
import 'package:mawiin/widgets/best_seller_product_item.dart';
import 'package:mawiin/widgets/menu.dart';
import 'package:mawiin/widgets/off_product_item.dart';

import 'filter.dart';

class Offers extends StatelessWidget {
  static const String routeName = "/Offers";
  final List<Product>_products = [
    Product(name:'بيتزا مارجريتا',image: 'assets/images/product1.png',price: 159),
    Product(name:'بيتزا مارجريتا',image: 'assets/images/sadia.png',price: 159),
    Product(name:'بيتزا مارجريتا',image: 'assets/images/product1.png',price: 159),
    Product(name:'بيتزا مارجريتا',image: 'assets/images/product1.png',price: 159),
    Product(name:'بيتزا مارجريتا',image: 'assets/images/product1.png',price: 159),
    Product(name:'بيتزا مارجريتا',image: 'assets/images/product1.png',price: 159),
  ];


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: new Menu(),
        key: _scaffoldKey,
        body: Container(
          width: width,
          height: height,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 0.3),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                        ),
                        width: width,
                        height:height*0.4,
                        child: Image.asset(
                          "assets/images/cover4.png",fit: BoxFit.cover,
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
                                    onTap: (){
                                      _scaffoldKey.currentState.openDrawer();
                                    },
                                    child: Image.asset(
                                      "assets/images/menu.png",
                                      width: 24,
                                      height: 18,
                                    ),
                                  ),
                                  Text(
                                    "العروض",
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
                                            child: Center(child: Text("2",style: textStyleM11,),),
                                            decoration: BoxDecoration(
                                                color: colorM1,
                                                shape: BoxShape.circle
                                            ),
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
                      Positioned(
                        top: height*0.12,
                        child: Container(
                          width: width * 0.95,
                          height: height*0.06,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 5),
                                hintText: 'البحث',
                                hintStyle: textStyleM3,
                                filled: true,
                                fillColor: colorM5,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: colorA1,
                                ),
                                suffixIcon: InkWell(
                                  onTap: (){
                                    Navigator.of(context).pushNamed(FilterScreen.routeName);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10,right: 10),
                                    child: FaIcon(
                                      FontAwesomeIcons.slidersH,
                                      size: 20,
                                      color: colorM3,
                                    ),
                                  ),
                                )),
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
                  height: height*0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height*0.05,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,),
                        child: Text('أفضل العروض',style: textStyleA17,),
                      ),
                      Container(
                        width: width,
                        height: height*0.38,
                        child: ListView.builder(
                          itemCount: _products.length,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(10),
                          itemBuilder: ((context,j){
                            return OffProductItem(image: _products[j].image,name: _products[j].name,price: _products[j].price,);
                          }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('الأكثر مبيعا',style: textStyleA17,),
                      ),
                      Container(
                        width: width,
                        height: height*0.19,
                        child: ListView.builder(
                          itemCount: _products.length,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(10),
                          itemBuilder: ((context,i)=> BestSellerProductItem(image: _products[i].image,)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
