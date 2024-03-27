// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC0lei2LaaMhlwAOgFVZWzf6OvdOVIIutg',
    appId: '1:678764703469:web:e447cc16647a9b9af4a6e4',
    messagingSenderId: '678764703469',
    projectId: 'fashion-shops-6faa7',
    authDomain: 'fashion-shops-6faa7.firebaseapp.com',
    databaseURL: 'https://fashion-shops-6faa7-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fashion-shops-6faa7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD702Iv3NDQEC6H648f_hGWLNE-Fn8eow4',
    appId: '1:678764703469:android:06c5d38b2f1370d7f4a6e4',
    messagingSenderId: '678764703469',
    projectId: 'fashion-shops-6faa7',
    databaseURL: 'https://fashion-shops-6faa7-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fashion-shops-6faa7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbHC5P_2Tnl_S4sJ0wj3-5VnBrtd3ub8E',
    appId: '1:678764703469:ios:5f409da9a9da458df4a6e4',
    messagingSenderId: '678764703469',
    projectId: 'fashion-shops-6faa7',
    databaseURL: 'https://fashion-shops-6faa7-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fashion-shops-6faa7.appspot.com',
    androidClientId: '678764703469-om1p1beti4rh1okqdeikv2m4puih0u8o.apps.googleusercontent.com',
    iosClientId: '678764703469-6sdig4epiaqnbgrb4j8bv3c2dc1u980f.apps.googleusercontent.com',
    iosBundleId: 'com.example.nienLuan2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbHC5P_2Tnl_S4sJ0wj3-5VnBrtd3ub8E',
    appId: '1:678764703469:ios:2a376497468a77e4f4a6e4',
    messagingSenderId: '678764703469',
    projectId: 'fashion-shops-6faa7',
    databaseURL: 'https://fashion-shops-6faa7-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fashion-shops-6faa7.appspot.com',
    androidClientId: '678764703469-om1p1beti4rh1okqdeikv2m4puih0u8o.apps.googleusercontent.com',
    iosClientId: '678764703469-l2hnm4uf44g0auh77vta943ppkgoleg9.apps.googleusercontent.com',
    iosBundleId: 'com.example.nienLuan2.RunnerTests',
  );
}
