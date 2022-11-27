// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({super.key, required this.Username, required this.Email});
  String Username;
  String Email;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2A3990),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffD23369),
                    blurRadius: 4,
                    offset: Offset(0, 4)
                  )
                ]
              ),
              width: double.infinity,
              height: 300,
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Welcome To ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      Text('Gotcha', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff9C254D)),),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  const CircleAvatar(
                    backgroundColor: Color(0xffA7D2CB),
                    radius: 60,
                    child: Icon(Icons.person),
                  ),
                  Text(Username, style: const TextStyle(fontSize: 30),),
                  Text(Email),
                ],
              ),
            ),
            const SizedBox(height: 100,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff9C254D))
              ),
              onPressed:() async {
                final SharedPreferences prefs = await _prefs;
                prefs.setBool('isLogedIn', false);
                // ignore: use_build_context_synchronously
                Navigator.of(context).pop();
              }, 
              child: const Text('Logout')
            )
          ],
        ),
      ),
    );
  }
}