import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:facerecognition_flutter/Login%20Page/confirmation.dart';
import 'package:facerecognition_flutter/front/bottom/bottom_bar.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogin(BuildContext context) async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BottomBar()));
    notifyListeners();
  }

  Future logout(BuildContext context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ConfirmUser()));
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}