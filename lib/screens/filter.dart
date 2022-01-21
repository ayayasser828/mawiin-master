import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/type_filter.dart';
import 'package:mawiin/providers/Types_Filter.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:provider/provider.dart';









class FilterScreen extends StatelessWidget {

  static const String routeName = "/FilterScreen";


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var helper = Provider.of<HelperM>(context,listen: true);
    var _product  = Provider.of<TypesFilter>(context).itemProduct;
    var _type  = Provider.of<TypesFilter>(context).itemType;

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
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)
                      ),
                      child: Image.asset(
                        "assets/images/cover4.png",
                        width: width,
                        height: height * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 20,
                      child:  Text("إعادة ضبط",style: textStyleM29,),
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
                              Text(
                                "الفلتر",
                                style: textStyleM6,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Icon(
                                    Icons.arrow_forward
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height*0.05,),
                      InkWell(
                        onTap: (){
                          helper.selectProductFilter = !helper.selectProductFilter;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("القسم",style: textStyleM3,),
                            Icon(helper.selectProductFilter?Icons.keyboard_arrow_down:Icons.keyboard_arrow_left,color: colorM1,)
                          ],
                        ),
                      ),
                      helper.selectProductFilter?
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: width,
                          height: 27,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _product.length,
                              itemBuilder: ((context,index)=>ChangeNotifierProvider.value(
                                value: _product[index],
                              child: Consumer<TypeFilter>(
                                builder: (context,prodect,child)=>Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: (){
                                      prodect.updateSelected();
                                    },
                                    child: Container(
                                      width: 74,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: prodect.selected?colorM1:colorM16,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(child: Text(prodect.name,style: prodect.selected?textStyleM4:textStyleM3,),),
                                    ),
                                  ),
                                ),
                              ),))),
                        ),
                      ):Container(),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          helper.selectTypeFilter = !helper.selectTypeFilter;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("العلامة التجارية",style: textStyleM3,),
                            Icon(helper.selectTypeFilter?Icons.keyboard_arrow_down:Icons.keyboard_arrow_left,color: colorM1,)
                          ],
                        ),
                      ),
                      helper.selectTypeFilter?    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: width,
                          height: 27,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _type.length,
                              itemBuilder: ((context,index)=>ChangeNotifierProvider.value(
                                value: _type[index],
                                child: Consumer<TypeFilter>(
                                  builder: (context,type,child)=>Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                      onTap: (){
                                        type.updateSelected();
                                      },
                                      child: Container(
                                        width: 74,
                                        height: 27,
                                        decoration: BoxDecoration(
                                          color: type.selected?colorM1:colorM16,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(child: Text(type.name,style: type.selected?textStyleM4:textStyleM3,),),
                                      ),
                                    ),
                                  ),
                                ),))),
                        ),
                      ):Container(),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          helper.selectPriceFilter = !helper.selectPriceFilter;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("السعر",style: textStyleM3,),
                            Icon(helper.selectPriceFilter?Icons.keyboard_arrow_down:Icons.keyboard_arrow_left
                              ,color: colorM1,)
                          ],
                        ),
                      ),
                    ],
                  )
                ),
                SizedBox(height: 40,),
                helper.selectPriceFilter?Column(
                  children: [
                    Container(
                      width: width,
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: SliderTheme(
                          data: SliderThemeData(
                            trackHeight: 8,
                          ),
                          child: RangeSlider(
                            activeColor: colorM1,
                            inactiveColor: colorM15,
                            min: 0.0,
                            max: 10000,
                            divisions: 10,
                            labels: RangeLabels(helper.lowValue.toString(),helper.highValue.toString()),
                            values: RangeValues(helper.lowValue,helper.highValue),
                            onChanged: (_range){
                              helper.lowValue = _range.start;
                              helper.highValue  = _range.end;
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("MAX",style: textStyleM12,),
                          Text("6000",style: textStyleM12,),
                          Text("3000",style: textStyleM12,),
                          Text("MIN",style: textStyleM12,),
                        ],
                      ),
                    )
                  ],
                ):Container(),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: width,
                    height: height*0.07,
                    child: RaisedButton(
                      elevation: 0,
                      color: colorM6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            25
                          )
                      ),
                      onPressed: (){
                       Navigator.of(context).pop();
                      },
                      child: Text("تأكيد",style: textStyleM4,),
                    ),
                  ),
                )








              ],
            ),
          ),
        ),
      ),
    );
  }
}



