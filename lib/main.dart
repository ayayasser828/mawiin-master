import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mawiin/providers/Types_Filter.dart';
import 'package:mawiin/providers/classifications.dart';
import 'package:mawiin/providers/dates.dart';
import 'package:mawiin/providers/helper_a.dart';
import 'package:mawiin/providers/helper_m.dart';
import 'package:mawiin/providers/times.dart';
import 'package:mawiin/providers/user_preferences.dart';
import 'package:mawiin/screens/delivery_time.dart';
import 'package:mawiin/screens/history.dart';
import 'package:mawiin/screens/offers.dart';
import 'package:mawiin/screens/online_payment.dart';
import 'package:mawiin/screens/add_payment_method.dart';
import 'package:mawiin/providers/carts.dart';
import 'package:mawiin/screens/payment_options.dart';
import 'package:mawiin/screens/system_screen.dart';
import 'package:mawiin/screens/track_order.dart';
import 'package:mawiin/screens/filter.dart';
import 'package:mawiin/screens/my_account_screen.dart';
import 'package:mawiin/screens/product%20_details.dart';
import 'package:mawiin/screens/registration1_screen.dart';
import 'package:mawiin/screens/registration2_screen.dart';
import 'package:mawiin/screens/splash_screen.dart';
import 'package:mawiin/screens/walkthrough.dart';
import 'package:mawiin/screens/we.dart';
import 'package:mawiin/services/auth.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';
import 'package:provider/provider.dart';
import 'package:mawiin/screens/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/cart.dart';
import 'models/date.dart';
import 'models/product.dart';
import 'models/type.dart';
import 'models/type_filter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Carts(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Product(),
        ),
        ChangeNotifierProvider.value(
          value: Classifications(),
        ),
        ChangeNotifierProvider.value(
          value: Dates(),
        ),
        ChangeNotifierProvider.value(
          value: Date(),
        ),
        ChangeNotifierProvider.value(
          value: Times(),
        ),
        ChangeNotifierProvider.value(
          value: HelperM(),
        ),
        ChangeNotifierProvider.value(
          value: TypeFilter(),
        ),
        ChangeNotifierProvider.value(
          value: TypesFilter(),
        ),
        ChangeNotifierProvider.value(
          value: TypeProduct(),
        ),
        ChangeNotifierProvider.value(
          value: HelperA(),
        ),
      ],
      child: MaterialApp(
        title: 'Mawiin',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: "dinnextltw23"),
        home: SplashScreen() ,
        routes: {
          Registration2Screen.routeName: (context) => Registration2Screen(),
          Registration1Screen.routeName: (context) => Registration1Screen(),
          WalkthroughScreen.routeName: (context) => WalkthroughScreen(),
          MyAccountScreen.routeName: (context) => MyAccountScreen(),
          BottomBar.routeName: (context) => BottomBar(),
          FilterScreen.routeName: (context) => FilterScreen(),
          ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
          TrackOrder.routeName: (context) => TrackOrder(),
          PaymentOptions.routeName: (context) => PaymentOptions(),
          Offers.routeName: (context) => Offers(),
          Location.routeName: (context) => Location(),
          AddPaymentMethod.routeName: (context) => AddPaymentMethod(),
          History.routeName: (context) => History(),
          OnlinePayment.routeName: (context) => OnlinePayment(),
          DeliveryTime.routeName: (context) => DeliveryTime(),
          System.routeName: (context) => System(),
          We.routeName: (context) => We(),
        },
      ),
    );
  }
}
