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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDWbfjFfP_55v2jK_SJxzAsm6U3BdW40O8',
    appId: '1:619610477876:web:b3fab5d2c8cacc5f0b0161',
    messagingSenderId: '619610477876',
    projectId: 'androidhuman-my-photo',
    authDomain: 'androidhuman-my-photo.firebaseapp.com',
    storageBucket: 'androidhuman-my-photo.appspot.com',
    measurementId: 'G-RGDZ20H6F2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2bx9Kn1BjwC0vIf1eyPPXeNuvLLYx0ac',
    appId: '1:619610477876:android:bd380c77d71253350b0161',
    messagingSenderId: '619610477876',
    projectId: 'androidhuman-my-photo',
    storageBucket: 'androidhuman-my-photo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2HqeVtdlTzhs7C7KolDZdaM12CLTDcrY',
    appId: '1:619610477876:ios:c199ffa6aef79b770b0161',
    messagingSenderId: '619610477876',
    projectId: 'androidhuman-my-photo',
    storageBucket: 'androidhuman-my-photo.appspot.com',
    iosClientId: '619610477876-pcd90ns1vqjp95pmmobani6r4tunvqcr.apps.googleusercontent.com',
    iosBundleId: 'com.androidhuman.myPhoto',
  );
}
