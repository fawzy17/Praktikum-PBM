import 'package:flutter/material.dart';
import 'package:tugas4/detail_page.dart';
import 'package:tugas4/home_baju_store.dart';
import 'package:tugas4/model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key, required this.model});

  final String model;

  void nothing(){

  }
  

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 2;
    const TextStyle optionStyle = 
    TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
    // ignore: unused_local_variable
    const List<Widget> widgetOptions = <Widget>[
      Text(
        'Index 0: Back',
        style: optionStyle,
      ),
      Text(
        'Index 1: Home',
        style: optionStyle,
      ),
      Text(
        'Index 2: Store',
        style: optionStyle,
      ),
    ];

  void onItemTapped(int index) {
    if(index == 0){
      Navigator.pop(context);
    }else if(index == 1){
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeStore())));
    }
  }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.pink[100],
                    foregroundColor: Colors.white,
                  ),
                  child: const Icon(Icons.dataset_sharp, color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 39, right: 39),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Hallo Ray Rizky Fawzy'),
                    Text(model, style: const TextStyle(fontWeight: FontWeight.w600),)
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 39, right: 39),
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('asset/img/avatar.jpg'),
                )
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: listDatabase.length,
                itemBuilder: ((context, index) {
                  // ignore: non_constant_identifier_names
                  final Database Ts = listDatabase[index];
                  if(Ts.model == model){
                    return Card(
                      child: InkWell(
                        onTap: (() {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailPage(id: Ts.id, model: Ts.model, merk: Ts.merk, deskripsi: Ts.deskripsi, rating: Ts.rating, foto: Ts.foto))));
                        }),
                        child: ListTile(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          tileColor: Colors.pink[100],
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Ts.merk, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                              Text(Ts.model, style: const TextStyle(fontSize: 13),)
                            ],
                          ),
                          leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(Ts.foto))
                              ),
                            ),
                        ),
                      ),
                    );
                  }else{
                    return Container();
                  }
                })
              ),
          ],
        )
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios_new, size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.home_outlined, size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.store_mall_directory_outlined, size: 30,),
            label: '',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.pink[100],
        onTap: onItemTapped,
      ),
    );
  }
}