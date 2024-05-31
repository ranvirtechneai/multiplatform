import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // user sign in
  Future<UserCredential> userSignInWithEmailAndPassword(
      String email, String password) async {
    try {
      //sign in
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    }
    // on any errors
    on FirebaseAuthException catch (e) {
      print(" ${e.toString()}");
      throw Exception(e.code);
    }
  }

  // sign out user
  Future<void> signOut() async {
    return await _auth.signOut();
  }

  // register user
  Future<UserCredential> userRegistrationWithEmailAndPassword(
      String email, String password) async {
    try {
      //register
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    }
    // on any errors
    on FirebaseAuthException catch (e) {
      print(" ${e.toString()}");
      throw Exception(e.code);
    }
  }
}
