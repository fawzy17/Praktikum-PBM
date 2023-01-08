// ignore_for_file: unused_field, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, no_leading_underscores_for_local_identifiers, unused_local_variable, dead_code

import 'package:flutter/material.dart';
import 'package:tastee/models/user_active.dart';
import 'package:tastee/pages/register_tastee.dart';
import 'package:tastee/pages/welcome_page.dart';

// ignore: must_be_immutable
class TasteeLogin extends StatefulWidget {
  const TasteeLogin({super.key});

  @override
  State<TasteeLogin> createState() => _TasteeLoginState();
}

class _TasteeLoginState extends State<TasteeLogin> {
  @override
  Widget build(BuildContext context) {
    final _tcUsername = TextEditingController();
    final _tcEmail = TextEditingController();
    final _tcPassword = TextEditingController();

    bool _isObsecure = true;

    String username = '';
    String email = '';

    String password = '';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: const Center(
              child: Text('Tastee',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ))),
          automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Column(
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
                          colors: [Color(0xFFfc4a1a), Color(0xFFf7b733)]),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(400, 500),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.only(top: 150, bottom: 100),
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _tcUsername,
                          decoration: InputDecoration(
                              labelText: 'Username',
                              hintText: 'Username',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    _tcUsername.clear();
                                  },
                                  icon: const Icon(Icons.clear))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
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
                                  icon: const Icon(Icons.clear))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: _tcPassword,
                          obscureText: _isObsecure,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Password',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObsecure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObsecure = !_isObsecure;
                                  });
                                },
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('New Member?'),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TasteeRegister()));
                                },
                                child: const Text(
                                  ' Register',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            username = _tcUsername.text;
                            email = _tcEmail.text;
                            var user =
                                userActive(username: username, email: email);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        WelcomePage(user: user)));
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff5d51a2),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text('Login',
                                    style: TextStyle(color: Colors.white))
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
      ),
    );
  }
}
