
import 'package:flutter/material.dart';
import 'package:passwordmanager/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

// ignore: camel_case_types
class _registerPageState extends State<registerPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // ignore: no_leading_underscores_for_local_identifiers
  final _tcUsername = TextEditingController();

  // ignore: no_leading_underscores_for_local_identifiers
  final _tcEmail = TextEditingController();

  // ignore: non_constant_identifier_names
  String Username = '';

  // ignore: non_constant_identifier_names
  String Email = '';
  
  // ignore: non_constant_identifier_names
  int id_user = 0;

  getStatus() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      id_user = prefs.getInt('id_user') ?? id_user;
    });
  }

  @override
  void initState(){
    super.initState();
    getStatus();
  }

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
                  child: Text('Password Manager', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xffF06292)),),
                ),
              ),
              const SizedBox(height: 150,),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 300,
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
                    children: [
                      const Text('Register', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 50,),
                      TextFormField( 
                        controller: _tcUsername,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _tcUsername.clear();
                            },icon: const Icon(Icons.clear),
                          )
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        controller: _tcEmail,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'email@google.com',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _tcEmail.clear();
                            },icon: const Icon(Icons.clear),
                          )
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff9C254D))
                        ),
                        onPressed: () async {
                          final SharedPreferences prefs = await _prefs;
                          Email = _tcEmail.text;
                          Username = _tcUsername.text;
                          id_user++;
                          prefs.setInt(Username, id_user);
                          prefs.setInt('id_user', id_user);
                          prefs.setString('Email', Email);
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) => const loginPage(), ));
                        },child: const Text('Regist'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already Have Account? '),
                          InkWell(
                            child: const Text('Login', style: TextStyle(color: Color(0xff9C254D)),),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) => const loginPage(), ));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}