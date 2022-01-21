import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/widgets/custom_stepper.dart';
import 'package:mawiin/widgets/menu.dart';



class TrackOrder extends StatelessWidget {
  static const String routeName = "/TrackOrder";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));

  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: Menu(),
      key: _scaffoldKey,
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: 10.0,
              child: Container(
                width: width,
                height: height * 0.55,
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
            Stack(
              children: [
                Container(
                    width: width,
                    height: height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      border: Border.all(color: Colors.grey, width: 0.3),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/images/cover4.png',
                      fit: BoxFit.cover,
                    )),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 26,
                            height: 25,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  child: Image.asset(
                                    'assets/images/basket.png',
                                    width: 15.38,
                                    height: 18,
                                  ),
                                ),
                                Positioned(
                                  top: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '0',
                                      style: textStyleA2,
                                    ),
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colorM1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'تتبع طلبك',
                            style: textStyleA1,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: width,
                height: height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'حالة الطلب',
                            style: textStyleA5,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CustomStepper(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
