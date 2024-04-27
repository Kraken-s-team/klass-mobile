import 'package:flutter/material.dart';
import 'package:flutter_application_1/comunitiy.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login2_screen.dart';
import 'package:flutter_application_1/login3_screen.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/models/post_model.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final post = Posts();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(15, 23, 42, 1)),
      debugShowCheckedModeBanner: false,
      home: LogIn(),
      routes: {
        LogIn.routeame:(context) => LogIn(),
        LogIn2.routeame:(context) => LogIn2(),
        LogIn3.routeame:(context) => LogIn3(),
        HomePage.routeame:(context) => HomePage(),
        Comunitiy.routname:(context) => Comunitiy()
      },
      );
      
  }
}
