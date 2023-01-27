import 'dart:async';
import 'dart:io';

import 'package:ar_hackthon/images.dart';
import 'package:ar_hackthon/menuCities.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.


  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    image1()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(

            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/ar_hackthoon.jpg"),
                  fit: BoxFit.fill),
            ),
        )
      );

  }
}