import 'package:flutter/material.dart';
import 'package:passwordmanager/login_page.dart';
import 'package:passwordmanager/pwm.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class detailed extends StatelessWidget {
  detailed({Key? key,required this.pwm}) : super(key: key);

  final Pwm pwm;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2A3990),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                width: double.infinity,
                child: const Center(
                  child: Text('Your Account', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xffF06292)),),
                ),
              ),
              const SizedBox(height: 150,),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 158, 158, 158),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffD23369),
                        blurRadius: 4,
                        offset: Offset(2, 2), // Shadow position
                      ),
                    ],
                  ),

                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(pwm.acc_of, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 50,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Username: ${pwm.user}', style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Password: ${pwm.pass}', style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back),
              label: 'Back',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Logout'
            ),
          ],
          onTap:(value) async {
            if (value == 0) {
              Navigator.pop(context);
            } else if(value == 1) {
              Navigator.pop(context);
            } else{
              final SharedPreferences prefs = await _prefs;
              prefs.setBool('isLogedIn', false);
              // ignore: use_build_context_synchronously
              Navigator.push(context, MaterialPageRoute(builder:(context) => const loginPage(), ));
            }
          },
          backgroundColor: const Color(0xff9C254D),
          selectedItemColor: const Color(0xffF06292),
          unselectedItemColor: const Color(0xffF06292),
        ),
      );
  }
}