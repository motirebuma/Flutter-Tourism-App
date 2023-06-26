import 'package:alobawa/providers/firebase_options.dart';
import 'package:alobawa/screens/mapShow.dart';
import 'package:alobawa/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'routes/route.dart' as route;

// void main() => runApp(const MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'alobawa',
      // theme: ThemeData(
      //   primaryColor: Colors.black,
      //   primarySwatch: Colors.black,
      // ),

      onGenerateRoute: route.controller,
      initialRoute: route.homePage,
    );
  }
}
