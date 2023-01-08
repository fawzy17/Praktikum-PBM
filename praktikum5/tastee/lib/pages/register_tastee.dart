// ignore_for_file: unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:tastee/models/registered_account.dart';
import 'package:tastee/pages/login_tastee.dart';


// ignore: must_be_immutable
class TasteeRegister extends StatefulWidget {
  const TasteeRegister({super.key});

  @override
  State<TasteeRegister> createState() => _TasteeRegisterState();
}

class _TasteeRegisterState extends State<TasteeRegister> {
  final _tcUsername = TextEditingController();
  final _tcEmail = TextEditingController();
  final _tcPassword = TextEditingController();
  final _tcConfirmPassword = TextEditingController();

  bool _isObsecure = true;

  String username = '';
  String email = '';

  String password = '';
  String confirmpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(child: Text('Tastee', style: TextStyle(fontWeight: FontWeight.w900,))),
        automaticallyImplyLeading: false
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFfc4a1a), Color(0xFFf7b733)]
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(400, 500),
                      ),
                    ),
                  ),
              ),
              Positioned(
                child: Container(
                  margin: const EdgeInsets.only(top: 150),
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _tcEmail,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _tcUsername.clear();
                            },
                            icon: const Icon(Icons.clear)
                          )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: _tcEmail,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'email@google.com',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _tcEmail.clear();
                            },
                            icon: const Icon(Icons.clear)
                          )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: _tcPassword,
                        obscureText: _isObsecure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(_isObsecure ? Icons.visibility : Icons.visibility_off,),
                            onPressed: () {
                              setState(() {
                                _isObsecure = !_isObsecure;
                              });
                            },
                          )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: _tcConfirmPassword,
                        obscureText: _isObsecure,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(_isObsecure ? Icons.visibility : Icons.visibility_off,),
                            onPressed: () {
                              setState(() {
                                _isObsecure = !_isObsecure;
                              });
                            },
                          )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already Have Account?'),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const TasteeLogin() ));
                            },
                            child: const Text(' Login', style: TextStyle(color: Colors.blue),)
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      InkWell(
                        onTap: () {
                          username = _tcUsername.text;
                          email = _tcEmail.text;
                          password = _tcPassword.text;
                          registeredAccount(username: username, email: email, password: password);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const TasteeLogin() ));
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff5d51a2),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text('Register', style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}