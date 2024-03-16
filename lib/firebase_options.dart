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
    apiKey: 'AIzaSyDHVxAIy9yQ6uRl-DQwiyuxG4PJr0iKLl0',
    appId: '1:960900236512:web:e13d86c4e76aac587bfc85',
    messagingSenderId: '960900236512',
    projectId: 'your-tern',
    authDomain: 'your-tern.firebaseapp.com',
    storageBucket: 'your-tern.appspot.com',
    measurementId: 'G-4W964HQFLP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgvj_jlsJ5i7XBs1TvZJrJU8hFroFTaN8',
    appId: '1:960900236512:android:18b906b92fa3b0057bfc85',
    messagingSenderId: '960900236512',
    projectId: 'your-tern',
    storageBucket: 'your-tern.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEFVx41C-qXUCUSsi_5tBTFcAeDdHGa60',
    appId: '1:960900236512:ios:9c0572594217db297bfc85',
    messagingSenderId: '960900236512',
    projectId: 'your-tern',
    storageBucket: 'your-tern.appspot.com',
    iosBundleId: 'kr.co.kihyun.yourTurn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEFVx41C-qXUCUSsi_5tBTFcAeDdHGa60',
    appId: '1:960900236512:ios:1ba576f9dfa37c467bfc85',
    messagingSenderId: '960900236512',
    projectId: 'your-tern',
    storageBucket: 'your-tern.appspot.com',
    iosBundleId: 'kr.co.kihyun.yourTurn.RunnerTests',
  );
}