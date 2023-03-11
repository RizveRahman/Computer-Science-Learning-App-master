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
    apiKey: 'AIzaSyAHeRWkBS-KUP673z8H1PoLGDzkUWh3DmY',
    appId: '1:846276874532:web:50b20be589386c3c6263b1',
    messagingSenderId: '846276874532',
    projectId: 'cs-bangla',
    authDomain: 'cs-bangla.firebaseapp.com',
    storageBucket: 'cs-bangla.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADDCPw0aAva_ZG5i7uYrGGTsujKYPSghc',
    appId: '1:846276874532:android:4aeaacb6dd21915e6263b1',
    messagingSenderId: '846276874532',
    projectId: 'cs-bangla',
    storageBucket: 'cs-bangla.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAskChnbtSNY2WbTTiKCictXLi28QtnrjQ',
    appId: '1:846276874532:ios:2d92b710b60f61146263b1',
    messagingSenderId: '846276874532',
    projectId: 'cs-bangla',
    storageBucket: 'cs-bangla.appspot.com',
    iosClientId: '846276874532-e4h51e88naj02ihmiruphbf9vgh2au45.apps.googleusercontent.com',
    iosBundleId: 'com.example.computerScienceInBangla',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAskChnbtSNY2WbTTiKCictXLi28QtnrjQ',
    appId: '1:846276874532:ios:2d92b710b60f61146263b1',
    messagingSenderId: '846276874532',
    projectId: 'cs-bangla',
    storageBucket: 'cs-bangla.appspot.com',
    iosClientId: '846276874532-e4h51e88naj02ihmiruphbf9vgh2au45.apps.googleusercontent.com',
    iosBundleId: 'com.example.computerScienceInBangla',
  );
}