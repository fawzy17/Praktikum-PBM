// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, duplicate_ignore, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers, must_be_immutable, unused_field

import 'package:flutter/material.dart';
import 'package:tastee/models/tastee_model.dart';
import 'package:tastee/models/user_active.dart';
import 'package:tastee/pages/home_page.dart';
import 'package:tastee/pages/profile_tastee.dart';
import 'package:tastee/pages/verif_page.dart';


class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.tasteeModel, required this.user}) : super(key: key);
  userActive user;
  final TasteeModel tasteeModel;
  @override
  State<DetailPage> createState() => _DetailPageState(tasteeModel: tasteeModel, user: user);
}

class _DetailPageState extends State<DetailPage> {
  _DetailPageState({required this.tasteeModel, required this.user});
  userActive user;
  final TasteeModel tasteeModel;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {


int selectedIndex = 1;
    TextStyle optionStyle = TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
    // ignore: unused_local_variable
    List<Widget> widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Settings',
        style: optionStyle,
      ),
      Text(
        'Index 2: Favorites',
        style: optionStyle,
      ),
    ];
    void onItemTapped(int index) {
      if(index == 0){
        Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(user: user), ));
      }else if(index == 1){
        // Navigator.push(context, MaterialPageRoute(builder:(context) => , ));
      }else if(index == 2){
        Navigator.push(context, MaterialPageRoute(builder:(context) => profilePage(user: user,), ));
      }
    }


    return Scaffold(
        backgroundColor: Color(0xff0a1931),        
        appBar: AppBar(
            title: Text('Detail Page'),
            backgroundColor: Color(0xFFfc4a1a),
            elevation: 0),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFfc4a1a), Color(0xFFf7b733)]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // color: Colors.white,
                          height: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 10, bottom: 20),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text('14 May',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                      width: 95,
                                      height: 100,
                                      child: Text('Tastee Fast Food',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold))),
                                  SizedBox(
                                    width: 95,
                                    child: Text('Karawang, IND',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]),
                          ),
                        ),
                        Image.asset(tasteeModel.image, width: 150, height: 250),
                      ])),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('Rp.' + tasteeModel.price,
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      Text(tasteeModel.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Container(
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Column(children: [
                  Text(tasteeModel.description,
                      style: TextStyle(color: Colors.white)),
                ])),
              ),
              Row(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          onPressed: _incrementCounter,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          var price = int.parse(tasteeModel.price);
                          // ignore: unnecessary_type_check
                          assert(price is int);
                          price = price * _counter;
                          Navigator.push(context, MaterialPageRoute(builder:(context) => verifPage(user: user, price: price, counter: _counter,), ));
                        },
                          child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xff5D51A2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                  child: Text('Order now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))))),
                    ],
                  ),
                )
              ])
            ],
          )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFf7b733),
        iconSize: 24,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                new Icon(Icons.notifications_none_outlined,
                    size: 25.5, color: Colors.white),
                Positioned(
                  top: -1.0,
                  right: -1.0,
                  child: Stack(
                    children: [
                      Text('$_counter', style: TextStyle(color: Colors.white))
                      // Icon(Icons.brightness_1, color: Colors.red, size: 12.0),
                    ],
                  ),
                )
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent[200],
        onTap: onItemTapped,
      ),
    );
  }
}