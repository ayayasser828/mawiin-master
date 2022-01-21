import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mawiin/screens/delivery_time.dart';
import 'package:mawiin/screens/track_order.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';



class Location extends StatelessWidget {
  static const String routeName = "/Location";
  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));

  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: width,
                      height: height * 0.2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        child: Image.asset(
                          "assets/images/cover4.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Container(
                        width: width,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => BottomBar(
                                          index: 0,
                                        )));
                                  },
                                  child: Container(
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
                                ),
                                Text(
                                  "تحديد الموقع",
                                  style: textStyleM6,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.arrow_forward)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Container(
                        width: width * 0.95,
                        height: height * 0.06,
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: width,
                    height: height * 0.35,
                    child: GoogleMap(
                      initialCameraPosition: _initialLocation,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      mapType: MapType.normal,
                      zoomGesturesEnabled: true,
                      zoomControlsEnabled: false,
                      onMapCreated: (GoogleMapController controller) {
                        mapController = controller;
                      },
                    ),
                  ),
                ),
                Container(
                  height: height*0.34,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'حدد موقع التوصيل',
                            style: textStyleM3,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                child: Material(
                                    borderRadius: BorderRadius.circular(7),
                                    elevation: 1,
                                    child: Icon(
                                      Icons.near_me,
                                      color: colorM1,
                                    )),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'التوصيل إلى الموقع الحالي',
                                style: textStyleA8,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            'مواقع التوصيل السابقة',
                            style: textStyleM3,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  child: Material(
                                      borderRadius: BorderRadius.circular(7),
                                      elevation: 1,
                                      child: Icon(
                                        Icons.location_on,
                                        color: colorM1,
                                      )),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'جدة - المملكة العربية السعودية - برج الكرم - الدور ال 13',
                                  style: textStyleA8,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                child: Material(
                                    borderRadius: BorderRadius.circular(7),
                                    elevation: 1,
                                    child: Icon(
                                      Icons.location_on,
                                      color: colorM1,
                                    )),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'الرياض - المملكة العربية السعودية - برج الكرم ',
                                style: textStyleA8,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                child: Material(
                                    borderRadius: BorderRadius.circular(7),
                                    elevation: 1,
                                    child: Icon(
                                      Icons.location_on,
                                      color: colorM1,
                                    )),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'جدة - المملكة العربية السعودية - برج التوحيد',
                                style: textStyleA8,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                child: Material(
                                    borderRadius: BorderRadius.circular(7),
                                    elevation: 1,
                                    child: Icon(
                                      Icons.location_on,
                                      color: colorM1,
                                    )),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'جدة - المملكة العربية السعودية -13',
                                style: textStyleA8,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: height*0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * 0.44,
                          height: height * 0.05,
                          child: RaisedButton(
                            color: colorA3,
                            child: Text(
                              'توصيل سريع',
                              style:
                              textStyleM3.copyWith(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(TrackOrder.routeName);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.44,
                          height: height * 0.05,
                          child: RaisedButton(
                            color: colorA6,
                            child: Text(
                              'توصيل عادي',
                              style: textStyleM3.copyWith(color: colorA3),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(DeliveryTime.routeName);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                )),
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
      ),
    );
  }
}
