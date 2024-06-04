import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  // firebase auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // user sign in
  Future<UserCredential> userSignInWithEmailAndPassword(
      String email, String password) async {
    try {
      //sign in
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // add new doc to the users collection if it does not exist
      _firestore.collection('users').doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
      });

      return userCredential;
    }
    // on any errors
    catch (e) {
      print(" ${e.toString()}");
      throw Exception(e);
    }
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

      // create the collection when we are registering the user
      _firestore.collection('users').doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
      });

      return userCredential;
    }
    // on any errors
    catch (e) {
      print(" ${e.toString()}");
      throw Exception(e);
    }
  }

  // sign out user
  Future<void> signOut() async {
    return await _auth.signOut();
  }
}
