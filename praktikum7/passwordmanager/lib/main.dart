import 'package:flutter/material.dart';
import 'package:passwordmanager/db_provider.dart';
import 'package:passwordmanager/login_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DbProvider(0),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const loginPage(),
      ),
    );
  }
}
