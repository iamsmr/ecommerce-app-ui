import 'package:ecomerce_app_ui/home.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffD2DAE7),
        primaryColor: Color(0xff000000),
        accentColor: Color(0xffFFFFFF),
      ),
      home: Home(),
    );
  }
}