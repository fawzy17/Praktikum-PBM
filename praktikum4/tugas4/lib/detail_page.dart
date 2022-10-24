import 'package:flutter/material.dart';
import 'package:tugas4/home_baju_store.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.id, required this.model, required this.merk, required this.deskripsi, required this.rating, required this.foto,});
  final int id;
  final String model;
  final String merk;
  final String deskripsi;
  final String rating;
  final String foto;

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
      body: Container(
        margin: const EdgeInsets.only(top: 25),
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
                  children: const [
                    Text('Hallo Ray Rizky Fawzy'),
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
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(foto)
                )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(merk, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                  Text(model, style: const TextStyle(color: Colors.grey),),
                  Row(
                    children: [
                      Text(rating, style: const TextStyle(fontSize: 20),),
                      const Text('★', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  Text(deskripsi)
                ],
              ),
            )
          ],
        ),
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