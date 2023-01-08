



// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tastee/models/user_active.dart';
import 'package:tastee/pages/home_page.dart';


// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  WelcomePage({super.key, required this.user});

  userActive user;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0a1931),
        body: SafeArea(
            child: Column(children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Container(
                height: 200,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    color: Color(0xff5D51A2),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/logo_tastee.png',
                        width: 200, height: 400),
                  ],
                )),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Welcome ${user.username}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 16),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(
                              'Find your delicous food and make a good day',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black45),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 50),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(user: user),
                                ),
                              );
                            },
                            child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xff5D51A2),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                    child: Text('Get started',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold))))),
                      ])),
            ),
          )
        ])));
  }
}
