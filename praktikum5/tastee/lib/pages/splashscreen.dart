// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tastee/pages/login_tastee.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState(){
    super.initState();
    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder:(context) => TasteeLogin(), ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a1931),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: 50, bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo_tastee.png'),
            Image.asset('assets/splash_img.png'),
            Column(
              children: [
                Text('SUPER', style: TextStyle(fontSize: 35, color: Colors.grey[300], fontWeight: FontWeight.bold),),
                Text('DELICIOUS', style: TextStyle(fontSize: 35, color: Colors.grey[300], fontWeight: FontWeight.bold)),
                Text('FOOD', style: TextStyle(fontSize: 35, color: Colors.grey[300], fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}