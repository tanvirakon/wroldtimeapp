import 'package:flutter/material.dart';
import 'package:timeapp/pages/choose_location.dart';
import 'package:timeapp/pages/loading.dart';
import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => chooseLocation(),
    },
  ));
}
