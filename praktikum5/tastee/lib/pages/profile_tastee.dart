// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, duplicate_ignore, avoid_unnecessary_containers, unnecessary_new, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:tastee/models/user_active.dart';
import 'package:tastee/pages/home_page.dart';


class profilePage extends StatelessWidget {
  profilePage({super.key, required this.user});

  userActive user;

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Column(
                children: [
                  Container(
                    child: new Stack(
                      //alignment:new Alignment(x, y)
                      children: <Widget>[
                        
                        Positioned(
                          child: new Container(
                            height: 175,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFfc4a1a), Color(0xFFf7b733)]
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.elliptical(300, 100),
                                bottomRight: Radius.elliptical(300, 100)
                              ),
                            ),
                          ),
                        ),
                        new Positioned(
                          child: Container(
                            margin: EdgeInsets.only(top: 100),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  
                                },
                                child: new CircleAvatar(
                                  radius: 75,
                                  backgroundImage: AssetImage('assets/squid.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 35, left: 20),
                          child: InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Icon(Icons.arrow_back_rounded)
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              margin: EdgeInsets.only(top: 40),
              width: double.infinity,
              child: Column(
                children: [   
                  Row(
                    children: [
                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Icon(Icons.person_outline, size: 25,),
                      ),
                      SizedBox(width: 20,),
                      Text(user.username, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    thickness: 1,
                  ),    
                  Row(
                    children: [
                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Icon(Icons.email_outlined, size: 25,),
                      ),
                      SizedBox(width: 20,),
                      Text('Email', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    thickness: 1,
                  ),    
                  Row(
                    children: [
                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Icon(Icons.remove_red_eye_outlined, size: 25,),
                      ),
                      SizedBox(width: 20,),
                      Text('Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Icon(Icons.settings_outlined, size: 25,),
                      ),
                      SizedBox(width: 20,),
                      Text('Settings', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Divider(
                    color: Colors.black38,
                    thickness: 1,
                  ),
                  SizedBox(height: 100,),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFfc4a1a), Color(0xFFf7b733)]),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Edit Profile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  )    
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFf7b733),
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
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