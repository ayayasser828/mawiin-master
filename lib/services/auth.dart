import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mawiin/providers/user_preferences.dart';
import 'package:mawiin/screens/main_page.dart';
import 'package:mawiin/screens/registration2_screen.dart';
import 'package:mawiin/widgets/bottom_nav_bar_widget.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;
  static String _verificationId = '';
  static String phoneN = '';


  void initVerifyCall(String phone, BuildContext context) async {
    phoneN = phone;
    print(phoneN);
    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential phoneAuthCredential) async {
      await auth.signInWithCredential(phoneAuthCredential).then((value) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => BottomBar(
                      index: 3,
                    )),
            (route) => false);
      }).catchError((e) {
        print(e.toString());
      });
      print('PhoneVerificationCompleted');
    };

    final PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException e) {
      print(e.message);
      print(e.code);
      if (e.code == 'invalid-phone-number') {
        print('The provided phone number is not valid.');
      }
    };

    final PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) async {
      print('PhoneCodeSent');
      _verificationId = verificationId;
    };

    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      print('PhoneCodeAutoRetrievalTimeout');
      _verificationId = verificationId;
    };
    // We're Supporting Only Egypt for Now! +20
    await auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 120),
      phoneNumber: "+966" + phone,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  Future<void> signInWithPhoneNumber(
      String smsCode, BuildContext context) async {
    final AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: smsCode,
    );
    await auth.signInWithCredential(phoneAuthCredential).then((value) {
      String currentUser = auth.currentUser.uid;
      print(currentUser);
      if (currentUser != null) {
        print(currentUser);
        UserPreferences().setCurrentUser();
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => BottomBar(
                      index: 3,
                    )),
            (route) => false);

      } else {
        print("Code is Wrong");
        //TODO: Widget if code is wrong
      }
    }).catchError((e){
      //TODO: Show Widget sms Code is Wrong to user
      print(e.toString());
    });
  }
}
