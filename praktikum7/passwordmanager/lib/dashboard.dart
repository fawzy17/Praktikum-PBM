import 'package:flutter/material.dart';
import 'package:passwordmanager/add_update_page.dart';
import 'package:passwordmanager/db_provider.dart';
import 'package:passwordmanager/detail.dart';
import 'package:passwordmanager/login_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  // ignore: non_constant_identifier_names
  String Username = '';

  // ignore: non_constant_identifier_names
  String Email = '';

  // ignore: non_constant_identifier_names
  int id_user = 0;

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  getStatus() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      Username = prefs.getString('Username') ?? Username;
      Email = prefs.getString('Email') ?? Email;
      id_user = prefs.getInt(Username) ?? id_user;
    });
    // ignore: use_build_context_synchronously
    Provider.of<DbProvider>(context, listen: false).getAllPwm(id_user);
  }

  void onItemTapped(int index) async {
    if(index == 0){
      final SharedPreferences prefs = await _prefs;
      prefs.setBool('isLogedIn', false);
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder:(context) => const loginPage(), ));
    }else if(index == 1){
      Navigator.push(context, MaterialPageRoute(builder:(context) => const AddUpdatePwm(), ));
    }else if(index == 2){
      final SharedPreferences prefs = await _prefs;
      prefs.setBool('isLogedIn', false);
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder:(context) => const loginPage(), ));
    }
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('$Username Account List', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffF06292)),),
          ),
          Container(
            width: double.infinity,
            height: 600,
            margin: const EdgeInsets.only(top: 26, left: 16, right: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 158, 158, 158),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffD23369),
                  blurRadius: 4,
                  offset: Offset(2, 2),
                )
              ]
            ),
            child: Consumer<DbProvider>(
              builder: (context, provider, child) {
                final pwms = provider.pwms;
                return ListView.builder(
                  itemCount: pwms.length,
                  itemBuilder: (context, index) {
                    int iteration = index + 1;
                    final pwm = pwms[index];
                    return Dismissible(
                      key: Key(pwm.id.toString()),
                      background: Container(
                        color: const Color(0xffF06292),
                      ),
                      onDismissed: (direction) {
                        Provider.of<DbProvider>(context, listen: false).deletePwm(pwm.id, id_user);
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(pwm.acc_of),
                          leading: Text(iteration.toString(), style: const TextStyle(fontSize: 20),),
                          subtitle: Row(
                            children: [
                              const Text('username: '),
                              Text(pwm.user.toString()),
                            ],
                          ),
                          onTap: () async{
                            Navigator.push(context, MaterialPageRoute(builder:(context) => detailed(pwm: pwm,), ));
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ), 
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Back',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create_rounded),
            label: 'Create'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout'
          ),
        ],
        onTap: onItemTapped,
        backgroundColor: const Color(0xff9C254D),
        selectedItemColor: const Color(0xffF06292),
          unselectedItemColor: const Color(0xffF06292),
      ),
    );
  }
}