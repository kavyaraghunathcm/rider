import 'package:flutter/material.dart';
import 'package:ridercompanion/pages/home.dart';
import 'package:ridercompanion/pages/navigation/navigation.dart';



void main()=> runApp(MaterialApp(
  //home: Home(),
  initialRoute: '/',
  routes: {
    '/': (context) => Navigation(),
    '/home': (context) => Home(),
 //   '/login': (context)=> Login(),
    '/navigation': (context)=> Navigation(),

  },
));

