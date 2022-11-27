
import 'package:flutter/material.dart';
import 'package:mylogin/dashboard_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // ignore: no_leading_underscores_for_local_identifiers
  final _tcUsername = TextEditingController();

  // ignore: no_leading_underscores_for_local_identifiers
  final _tcEmail = TextEditingController();

  // ignore: non_constant_identifier_names
  String Username = '';

  // ignore: non_constant_identifier_names
  String Email = '';

  bool _isLogedIn = false;

  void cekStatus() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      if(_isLogedIn == true){
        print('_isLogedIn');
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => Dashboard(Username: Username, Email: Email), ));
      }else{
        print('_isLogedIn');
      }
    });
    prefs.setBool('isLogedIn', _isLogedIn);
  }

  getStatus() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      _isLogedIn = prefs.getBool('isLogedIn') ?? _isLogedIn;
      Username = prefs.getString('Username') ?? Username;
      Email = prefs.getString('Email') ?? Email;
    });
  }

  @override
  void initState(){
    super.initState();
    getStatus();
    cekStatus();
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
                  child: Text('Gotcha', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xffF06292)),),
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
                      const Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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
                          _isLogedIn = true;
                          Email = _tcEmail.text;
                          Username = _tcUsername.text;
                          prefs.setString('Username', Username);
                          prefs.setString('Email', Email);
                          prefs.setBool('isLogedIn', _isLogedIn);
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) => Dashboard(Username: Username, Email: Email), ));
                        },child: const Text('Login'),
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