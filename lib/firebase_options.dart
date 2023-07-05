// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDHvvaBl372R0J5QGRIugJjFi-eoFo1xbw',
    appId: '1:678641497101:android:91a8992eb9747720051144',
    messagingSenderId: '678641497101',
    projectId: 'alobawa',
    storageBucket: 'alobawa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlgKln-IGDX5Cvhjf335WmGKusZGlFcCI',
    appId: '1:678641497101:ios:db61588e1b5f4fbd051144',
    messagingSenderId: '678641497101',
    projectId: 'alobawa',
    storageBucket: 'alobawa.appspot.com',
    androidClientId:
        '678641497101-hgqvirog9agcaubnvjqqhokhl19mjl4a.apps.googleusercontent.com',
    iosClientId:
        '678641497101-qpobkn4eno0vsv7uba8lkia57bpgu2ui.apps.googleusercontent.com',
    iosBundleId: 'com.example.alobawa',
  );
}
