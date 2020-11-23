import 'package:delivery/screens/BottomNavigationBar.dart';
import 'package:delivery/screens/message2.dart';
import 'package:flutter/material.dart';
import 'screens/message.dart';
import 'screens/message2.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          body1: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'home',
      routes: {
        'home':(context)=>Home(), ///CREATED A LOADING SCREEN
        'message':(context)=>Message(),
        'message2':(context)=>Message2(),



      },
    );
  }
}