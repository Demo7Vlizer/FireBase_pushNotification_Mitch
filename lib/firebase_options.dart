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
    apiKey: 'AIzaSyDmAiu84NPfixiKkadzbQqRuQ4_ELYEWg4',
    appId: '1:985874885247:web:36f46810870cf01e40ed4a',
    messagingSenderId: '985874885247',
    projectId: 'pushnotification-abb5f',
    authDomain: 'pushnotification-abb5f.firebaseapp.com',
    storageBucket: 'pushnotification-abb5f.firebasestorage.app',
    measurementId: 'G-72REM6ZB62',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQDJDM1YXGiXVHvnOo7bHIwwpHh8dxrLY',
    appId: '1:985874885247:android:ba4ba03a14a08bd740ed4a',
    messagingSenderId: '985874885247',
    projectId: 'pushnotification-abb5f',
    storageBucket: 'pushnotification-abb5f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxYH_h20AmLvH5ujZ3VFRrPonbyeyepp4',
    appId: '1:985874885247:ios:43967ea7b2606e4740ed4a',
    messagingSenderId: '985874885247',
    projectId: 'pushnotification-abb5f',
    storageBucket: 'pushnotification-abb5f.firebasestorage.app',
    iosBundleId: 'com.example.firebaseNotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxYH_h20AmLvH5ujZ3VFRrPonbyeyepp4',
    appId: '1:985874885247:ios:43967ea7b2606e4740ed4a',
    messagingSenderId: '985874885247',
    projectId: 'pushnotification-abb5f',
    storageBucket: 'pushnotification-abb5f.firebasestorage.app',
    iosBundleId: 'com.example.firebaseNotification',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDmAiu84NPfixiKkadzbQqRuQ4_ELYEWg4',
    appId: '1:985874885247:web:498b9a598ed3eb8b40ed4a',
    messagingSenderId: '985874885247',
    projectId: 'pushnotification-abb5f',
    authDomain: 'pushnotification-abb5f.firebaseapp.com',
    storageBucket: 'pushnotification-abb5f.firebasestorage.app',
    measurementId: 'G-C70JG64ERF',
  );
}
