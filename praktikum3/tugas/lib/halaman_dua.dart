import 'package:flutter/material.dart';
import 'package:tugas/halama_satu.dart';

void nothing(){
  return ;
}
// ignore: camel_case_types
class halamanDua extends StatelessWidget {
  const halamanDua({super.key});


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return const Color.fromARGB(255, 0, 0, 0);
    }
    Color bgGetColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color.fromARGB(255, 0, 0, 0);
      }
      return Colors.white;
    }
    int selectedIndex = 1;
    const TextStyle optionStyle = 
    TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
    // ignore: unused_local_variable
    const List<Widget> widgetOptions = <Widget>[
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
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const halamanSatu())));
    }else if(index == 1){
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const halamanDua())));
    }else if(index == 2){
      nothing();
    }
  }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text('Settings', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, fontFamily: ('Poppins'))),
                ]
              ),
            ),
            Container(
              height: 75,
              width: 350,
              margin: const EdgeInsets.only(bottom: 15, top: 35),
              padding: const EdgeInsets.only(top: 15, left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(93, 124, 77, 255)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/img/img1.jpeg'),
                      ),
                      Container(
                        height: 50,
                        width: 220,
                        margin: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: const <Widget>[
                            Align(alignment: Alignment.topLeft, child: Text('Ray Rizky Fawzy', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),),
                            Align(alignment: Alignment.topLeft, child: Text('View profile')),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Column(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: nothing,
                              // ignore: sort_child_properties_last
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded
                              ),
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.resolveWith(getColor),
                                backgroundColor: MaterialStateProperty.resolveWith(bgGetColor),
                              )
                            )
                          ]
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                              width: 270,
                              child: Column(
                                children: const <Widget>[
                                  Align(alignment: Alignment.centerLeft, child: Text('Settings', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: nothing,
                                    // ignore: sort_child_properties_last
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.resolveWith(getColor),
                                      backgroundColor: MaterialStateProperty.resolveWith(bgGetColor),
                                    )
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                              width: 270,
                              child: Column(
                                children: const <Widget>[
                                  Align(alignment: Alignment.centerLeft, child: Text('Payment methods', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: nothing,
                                    // ignore: sort_child_properties_last
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.resolveWith(getColor),
                                      backgroundColor: MaterialStateProperty.resolveWith(bgGetColor),
                                    )
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                              width: 270,
                              child: Column(
                                children: const <Widget>[
                                  Align(alignment: Alignment.centerLeft, child: Text('Bonus card', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: nothing,
                                    // ignore: sort_child_properties_last
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.resolveWith(getColor),
                                      backgroundColor: MaterialStateProperty.resolveWith(bgGetColor),
                                    )
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                              width: 270,
                              child: Column(
                                children: const <Widget>[
                                  Align(alignment: Alignment.centerLeft, child: Text('Orders', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: nothing,
                                    // ignore: sort_child_properties_last
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.resolveWith(getColor),
                                      backgroundColor: MaterialStateProperty.resolveWith(bgGetColor),
                                    )
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                              width: 270,
                              child: Column(
                                children: const <Widget>[
                                  Align(alignment: Alignment.centerLeft, child: Text('Favorites', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: nothing,
                                    // ignore: sort_child_properties_last
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.resolveWith(getColor),
                                      backgroundColor: MaterialStateProperty.resolveWith(bgGetColor),
                                    )
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                Text('Logout', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontFamily: ('Poppins')))
              ]),
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.settings_outlined, size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars_outlined, size: 40,),
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