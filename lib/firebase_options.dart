// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBL4VdMoLERB3Gfhukdij3u4CiEu4tI_Bc',
    appId: '1:1055735903085:web:c7bc7da2501aca7d38a064',
    messagingSenderId: '1055735903085',
    projectId: 'multiplatform-b4248',
    authDomain: 'multiplatform-b4248.firebaseapp.com',
    storageBucket: 'multiplatform-b4248.appspot.com',
    measurementId: 'G-KYZNVCGJN5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-rZRUcjJeLhlYWWlM0IbAOB69-XrLYmg',
    appId: '1:1055735903085:android:b43f0a30cfc2eb4f38a064',
    messagingSenderId: '1055735903085',
    projectId: 'multiplatform-b4248',
    storageBucket: 'multiplatform-b4248.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkBmbBkKDTFhcSIL9tZBpnNLvX1B5u_mg',
    appId: '1:1055735903085:ios:bf116019913f3c6338a064',
    messagingSenderId: '1055735903085',
    projectId: 'multiplatform-b4248',
    storageBucket: 'multiplatform-b4248.appspot.com',
    iosBundleId: 'com.example.multiplatorm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkBmbBkKDTFhcSIL9tZBpnNLvX1B5u_mg',
    appId: '1:1055735903085:ios:bf116019913f3c6338a064',
    messagingSenderId: '1055735903085',
    projectId: 'multiplatform-b4248',
    storageBucket: 'multiplatform-b4248.appspot.com',
    iosBundleId: 'com.example.multiplatorm',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBL4VdMoLERB3Gfhukdij3u4CiEu4tI_Bc',
    appId: '1:1055735903085:web:087e64f4b821120f38a064',
    messagingSenderId: '1055735903085',
    projectId: 'multiplatform-b4248',
    authDomain: 'multiplatform-b4248.firebaseapp.com',
    storageBucket: 'multiplatform-b4248.appspot.com',
    measurementId: 'G-0XV4K536V3',
  );
}
