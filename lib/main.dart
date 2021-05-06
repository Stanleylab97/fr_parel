import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'navigation/bottom_navigation_bar.dart';
import 'screens/Auth/authentication.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Racine.routeName: (context) => Racine(),
        //Authentication.routeName: (context) => Authentication(),
        //Settings.routeName: (context) => Settings(),
        //Account.routeName: (context) => Account(),
        //Sortie.routeName: (context) => Sortie(),
        //SortieDetails.routeName: (context) => SortieDetails(),
        //Essence.routeName: (context) => Essence(),
        //

        //Carburation.routeName: (context) => PointCarburation(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png'),
        splashTransition: SplashTransition.sizeTransition,
        nextScreen: AuthTypeSelector(),
        backgroundColor: Colors.white,
        duration: 3000,
      ),
    );
  }
}
