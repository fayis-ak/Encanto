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
    apiKey: 'AIzaSyChHKIdJJvn0PhI_bmOQr2zEkdDQ5QHE4c',
    appId: '1:291829369087:web:eae0177f6bf9a079d0e4ca',
    messagingSenderId: '291829369087',
    projectId: 'encanto-bf9d4',
    authDomain: 'encanto-bf9d4.firebaseapp.com',
    storageBucket: 'encanto-bf9d4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAssXEUJErqvWb8t6fvKofNBk915RYdIBE',
    appId: '1:291829369087:android:632aa574e1ca5da2d0e4ca',
    messagingSenderId: '291829369087',
    projectId: 'encanto-bf9d4',
    storageBucket: 'encanto-bf9d4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzx_aQa6OXARZXsHAdF4REZbsav0hZ33g',
    appId: '1:291829369087:ios:e8a2b98a64fcb868d0e4ca',
    messagingSenderId: '291829369087',
    projectId: 'encanto-bf9d4',
    storageBucket: 'encanto-bf9d4.appspot.com',
    iosBundleId: 'com.example.encanto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzx_aQa6OXARZXsHAdF4REZbsav0hZ33g',
    appId: '1:291829369087:ios:86f07d80c4b538cbd0e4ca',
    messagingSenderId: '291829369087',
    projectId: 'encanto-bf9d4',
    storageBucket: 'encanto-bf9d4.appspot.com',
    iosBundleId: 'com.example.encanto.RunnerTests',
  );
}