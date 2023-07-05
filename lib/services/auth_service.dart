// import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // / obtain teh auth details
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new crdential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // after signin
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // sign out handler
  Future<void> handleSignOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
