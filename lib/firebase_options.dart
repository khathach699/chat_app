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
    apiKey: 'AIzaSyAhoqMf49CZ24d9-fnY25seCrocydO4jhU',
    appId: '1:135695127725:web:af01d94e0191651faa2224',
    messagingSenderId: '135695127725',
    projectId: 'chatapp-22f00',
    authDomain: 'chatapp-22f00.firebaseapp.com',
    storageBucket: 'chatapp-22f00.firebasestorage.app',
    measurementId: 'G-0C5TDSM6ZH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_51GTWDYfkcV9Kj9h8iBPdF5SDantAQI',
    appId: '1:135695127725:android:06aeaed811e57b50aa2224',
    messagingSenderId: '135695127725',
    projectId: 'chatapp-22f00',
    storageBucket: 'chatapp-22f00.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDk_qLyFNcH7SQvzyQWWgYEaW99mWYLrdw',
    appId: '1:135695127725:ios:51ccf8180581571daa2224',
    messagingSenderId: '135695127725',
    projectId: 'chatapp-22f00',
    storageBucket: 'chatapp-22f00.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDk_qLyFNcH7SQvzyQWWgYEaW99mWYLrdw',
    appId: '1:135695127725:ios:51ccf8180581571daa2224',
    messagingSenderId: '135695127725',
    projectId: 'chatapp-22f00',
    storageBucket: 'chatapp-22f00.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAhoqMf49CZ24d9-fnY25seCrocydO4jhU',
    appId: '1:135695127725:web:9dbd7de1309e6141aa2224',
    messagingSenderId: '135695127725',
    projectId: 'chatapp-22f00',
    authDomain: 'chatapp-22f00.firebaseapp.com',
    storageBucket: 'chatapp-22f00.firebasestorage.app',
    measurementId: 'G-2GDMKCSPG7',
  );
}
