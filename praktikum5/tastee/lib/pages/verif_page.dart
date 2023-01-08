// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tastee/models/user_active.dart';
import 'package:tastee/pages/home_page.dart';
import 'package:tastee/pages/login_tastee.dart';


class verifPage extends StatelessWidget {
  verifPage({super.key, required this.user, required this.price, required this.counter});
  int price;
  int counter;
  userActive user;

  @override
  Widget build(BuildContext context) {
    var tgl = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/pembayaran.png')),
          Text('Tanggal:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Text(tgl.toString(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white),
          ),
          Divider(
            color: Colors.black38,
            thickness: 2,
          ),
          Text('Jumlah Pesanan:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Text(counter.toString(),
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Divider(
            color: Colors.black38,
            thickness: 2,
          ),
          Text('Total Harga:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Text(price.toString(),
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Divider(
            color: Colors.black38,
            thickness: 2,
          ),
          SizedBox(
              height: 30,
            ),
          Container(
              width: 316,
              height: 50,
              child: ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(user: user),));} ,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
              ), 
              child:
                const Text(
                  'Kembali Ke HomePage',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 156,
              height: 50,
              child: ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => TasteeLogin(),));} ,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))
              ), 
              child:
                const Text(
                  'Log Out',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      )
    );
  }
}