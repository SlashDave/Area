import 'package:area/screens/homePage.dart';
import 'package:area/screens/servicesPage.dart';
import 'package:area/screens/userProfilePage.dart';
import 'package:area/services/deezerService.dart';
import 'package:area/services/exposeService.dart';
import 'package:area/services/githubService.dart';
import 'package:area/services/gmailService.dart';
import 'package:area/services/redditService.dart';
import 'package:area/services/serviceConnect.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Area',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Avenir',
        primarySwatch: Colors.blue,
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        )),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
