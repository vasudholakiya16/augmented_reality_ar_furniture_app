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
    apiKey: 'AIzaSyCu-GFCxmBMlln8ceiJedrffOZ3x1BHKC4',
    appId: '1:288271871324:web:0b53022c1d6aee8209a599',
    messagingSenderId: '288271871324',
    projectId: 'emart-fe09a',
    authDomain: 'emart-fe09a.firebaseapp.com',
    databaseURL: 'https://emart-fe09a-default-rtdb.firebaseio.com',
    storageBucket: 'emart-fe09a.appspot.com',
    measurementId: 'G-5NPBKV41GQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOfG4M9VD2IWIAuCaFPCOFNNaxeapFhQs',
    appId: '1:288271871324:android:8abc95d8be0631c509a599',
    messagingSenderId: '288271871324',
    projectId: 'emart-fe09a',
    databaseURL: 'https://emart-fe09a-default-rtdb.firebaseio.com',
    storageBucket: 'emart-fe09a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJs6-QAUqEKBCcGyRZx5wO6BTllFuLIL8',
    appId: '1:288271871324:ios:e423adbdad2a0fb009a599',
    messagingSenderId: '288271871324',
    projectId: 'emart-fe09a',
    databaseURL: 'https://emart-fe09a-default-rtdb.firebaseio.com',
    storageBucket: 'emart-fe09a.appspot.com',
    androidClientId: '288271871324-cbi64iv7uujplluh88dtbal0m8amrhpo.apps.googleusercontent.com',
    iosClientId: '288271871324-d5jiqe4lf29fith8tkega0sqi7kotp16.apps.googleusercontent.com',
    iosBundleId: 'com.example.augmentedRealityArFurnitureApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJs6-QAUqEKBCcGyRZx5wO6BTllFuLIL8',
    appId: '1:288271871324:ios:e423adbdad2a0fb009a599',
    messagingSenderId: '288271871324',
    projectId: 'emart-fe09a',
    databaseURL: 'https://emart-fe09a-default-rtdb.firebaseio.com',
    storageBucket: 'emart-fe09a.appspot.com',
    androidClientId: '288271871324-cbi64iv7uujplluh88dtbal0m8amrhpo.apps.googleusercontent.com',
    iosClientId: '288271871324-d5jiqe4lf29fith8tkega0sqi7kotp16.apps.googleusercontent.com',
    iosBundleId: 'com.example.augmentedRealityArFurnitureApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBvPPpd8ZoECWORa_03eEx04C3CRqGShO0',
    appId: '1:288271871324:web:fa7244c54cdc0f6c09a599',
    messagingSenderId: '288271871324',
    projectId: 'emart-fe09a',
    authDomain: 'emart-fe09a.firebaseapp.com',
    databaseURL: 'https://emart-fe09a-default-rtdb.firebaseio.com',
    storageBucket: 'emart-fe09a.appspot.com',
    measurementId: 'G-X8LS8TDW3G',
  );
}