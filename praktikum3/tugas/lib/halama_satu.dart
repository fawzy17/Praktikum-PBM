import 'package:flutter/material.dart';
import 'package:tugas/halaman_dua.dart';

void nothing(){
  return ;
}
// ignore: camel_case_types
class halamanSatu extends StatelessWidget {
  const halamanSatu({super.key});

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
    int selectedIndex = 0;
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
        children: [
          Container(
            height: 150,
            width: 200,
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('★ ', style: TextStyle(fontSize: 20, color: Colors.amber)),
                Text('HASBURGER', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600,color: Colors.deepPurpleAccent, fontFamily: ('Poppins'))),
                Text(' ★', style: TextStyle(fontSize: 20, color: Colors.amber)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('We put', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, fontFamily: ('Poppins'))),
              Text(' taste ', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.deepPurpleAccent, fontFamily: ('Poppins'))),
              Text('first', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, fontFamily: ('Poppins'))),
            ],
          ),
          Container(
            height: 85,
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
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: Column(
                        children: const <Widget>[
                          Align(alignment: Alignment.topLeft, child: Text('Purchase', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),),
                          Align(alignment: Alignment.topLeft, child: Text('Order, pay and pick up your tasty treats!')),
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
                              Icons.arrow_forward_ios_rounded),
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
            height: 85,
            width: 350,
            margin: const EdgeInsets.only(bottom: 15),
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
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: Column(
                        children: const <Widget>[
                          Align(alignment: Alignment.topLeft, child: Text('Feed', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),),
                          Align(alignment: Alignment.topLeft, child: Text('You have 10 unread message')),
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
                              Icons.arrow_forward_ios_rounded),
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
            height: 85,
            width: 350,
            margin: const EdgeInsets.only(bottom: 15),
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
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: Column(
                        children: const <Widget>[
                          Align(alignment: Alignment.topLeft, child: Text('Products', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),),
                          Align(alignment: Alignment.topLeft, child: Text('Check the menu & order now!')),
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
                              Icons.arrow_forward_ios_rounded),
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
            height: 85,
            width: 350,
            margin: const EdgeInsets.only(bottom: 15),
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
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: Column(
                        children: const <Widget>[
                          Align(alignment: Alignment.topLeft, child: Text('Coupons', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),),
                          Align(alignment: Alignment.topLeft, child: Text('Collect coupons')),
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
                              Icons.arrow_forward_ios_rounded),
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
            height: 85,
            width: 350,
            margin: const EdgeInsets.only(bottom: 15),
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
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: Column(
                        children: const <Widget>[
                          Align(alignment: Alignment.topLeft, child: Text('Restaurants', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),),
                          Align(alignment: Alignment.topLeft, child: Text('Allow location services and find nearest')),
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
                              Icons.arrow_forward_ios_rounded),
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
        // ignore: prefer_const_literals_to_create_immutables
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