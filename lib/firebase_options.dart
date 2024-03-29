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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApDqe8YjKUw4Wr9cdasTolqUE8b_DzKzw',
    appId: '1:357716419919:android:d18af3b7a87b95e6bd913a',
    messagingSenderId: '357716419919',
    projectId: 'sabdaharu-efd86',
    databaseURL: 'https://sabdaharu-efd86-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sabdaharu-efd86.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCA1knZ2lHg_BgWWxu_XHD2l3bHOGhEgG0',
    appId: '1:357716419919:ios:eff2154ef178558dbd913a',
    messagingSenderId: '357716419919',
    projectId: 'sabdaharu-efd86',
    databaseURL: 'https://sabdaharu-efd86-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sabdaharu-efd86.appspot.com',
    iosClientId: '357716419919-3o1m1quv00ocb2ckontooncmbhe8bbk8.apps.googleusercontent.com',
    iosBundleId: 'com.example.pressitonMobile',
  );
}
