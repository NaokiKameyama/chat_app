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
    apiKey: 'AIzaSyBtelAlMGYrHrIzpTPZLyDx-gJtaV0eHfc',
    appId: '1:313486097502:web:bc192df21c58486bf108cf',
    messagingSenderId: '313486097502',
    projectId: 'fir-sample-app-a6e66',
    authDomain: 'fir-sample-app-a6e66.firebaseapp.com',
    storageBucket: 'fir-sample-app-a6e66.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0E49bfa76vNpMeQOXzgCnlJMw3Lm2Oqc',
    appId: '1:313486097502:android:363f8d0be6817e13f108cf',
    messagingSenderId: '313486097502',
    projectId: 'fir-sample-app-a6e66',
    storageBucket: 'fir-sample-app-a6e66.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAm2JhN4p_8rIqfKw-5mlzXL1IMUc8C4QU',
    appId: '1:313486097502:ios:921549dda976d7a1f108cf',
    messagingSenderId: '313486097502',
    projectId: 'fir-sample-app-a6e66',
    storageBucket: 'fir-sample-app-a6e66.appspot.com',
    iosClientId: '313486097502-iv3a6gqbs6l4k0dfofg73sk4o733drts.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
