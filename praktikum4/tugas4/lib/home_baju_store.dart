import 'package:flutter/material.dart';
import 'package:tugas4/list_page.dart';



class HomeStore extends StatelessWidget {
  const HomeStore({super.key});
  void nothing(){

  }
  
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
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
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  children: const[
                    Text('Hallo Ray Rizky Fawzy'),
                    Text('Bekasi, INA', style: TextStyle(fontWeight: FontWeight.w600),)
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
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(top: 100, left: 16)),
                Container(
                  height: 50,
                  width: 310,
                  padding: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(children: [
                    const Icon(Icons.search)
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.pink[100]
                      )
                    ),
                    child: const Icon(Icons.checklist_rtl_sharp, size: 25,)
                  ),
                )
              ],
            ),
            Container(
              height: 150,
              width: 380,
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 150,
                    margin: const EdgeInsets.only(left: 20, right: 25),
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('asset/img/baju_pink.png'))
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text('Big Sale', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),),
                      Text('Get the trandy', style: TextStyle(fontSize: 15),),
                      Text('fashion at a discount', style: TextStyle(fontSize: 15),),
                      Text('off up to 50%', style: TextStyle(fontSize: 15),),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 28,
                      width: 60,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: InkWell(onTap: nothing, child: const Text('ALL', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      height: 28,
                      width: 80,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: InkWell(onTap: nothing, child: const Text('T-Shirt', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      height: 28,
                      width: 100,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: InkWell(onTap: nothing, child: const Text('Trousers', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      height: 28,
                      width: 60,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: InkWell(onTap: nothing, child: const Text('Shirt', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      height: 28,
                      width: 120,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: InkWell(onTap: nothing, child: const Text('Underwear', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      height: 28,
                      width: 140,
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: InkWell(onTap: nothing, child: const Text('Recomended', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: InkWell(
                          onTap:() {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => const ListPage(model: 'T-Shirt',),));
                          },
                          child: SizedBox(
                            width: 180,
                            height: 220,
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 170,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('asset/img/baju_pink.png')
                                    )
                                  ),
                                ),
                                const Text('T-Shirts', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: InkWell(
                          onTap: (() {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const ListPage(model: 'Shirt'))));
                          }) ,
                          child: SizedBox(
                            width: 180,
                            height: 220,
                            child: Column(
                              children: [
                                Container(
                                  width: 130,
                                  height: 170,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('asset/img/kemeja_merah.png')
                                    )
                                  ),
                                ),
                                const Text('Shirts', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: InkWell(
                          onTap: (() {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => const ListPage(model: 'Trouser'))));
                          }),
                          child: SizedBox(
                            width: 180,
                            height: 220,
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 170,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('asset/img/celana_jeans.png')
                                    )
                                  ),
                                ),
                                const Text('Trousers', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: InkWell(
                          onTap: (() {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => const ListPage(model: 'Underwear'), ));
                          }),
                          child: SizedBox(
                            width: 180,
                            height: 220,
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 170,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('asset/img/daleman_biru.png')
                                    )
                                  ),
                                ),
                                const Text('Underwear', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
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