
import 'package:flutter/material.dart';
import 'package:passwordmanager/db_provider.dart';
import 'package:passwordmanager/login_page.dart';
import 'package:passwordmanager/pwm.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddUpdatePwm extends StatefulWidget {
  final Pwm? pwm;
  const AddUpdatePwm({Key? key, this.pwm}) : super(key: key);

  @override
  State<AddUpdatePwm> createState() => _AddUpdatePwmState();
}

class _AddUpdatePwmState extends State<AddUpdatePwm> {

  // ignore: non_constant_identifier_names
  TextEditingController? _acc_ofController;
  TextEditingController? _userController;
  TextEditingController? _passController;

  // ignore: non_constant_identifier_names
  String Username = '';
  // ignore: non_constant_identifier_names
  int id_user = 0;

  bool _isObsecure = true;

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  getStatus() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      Username = prefs.getString('Username') ?? Username;
      id_user = prefs.getInt(Username) ?? id_user;
    });
  }

  void onItemTapped(int index) async {
    if(index == 0){
      Navigator.pop(context);
    }else if(index == 1){
      Navigator.pop(context);
    }else if(index == 2){
      final SharedPreferences prefs = await _prefs;
      prefs.setBool('isLogedIn', false);
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder:(context) => const loginPage(), ));
    }
  }

  @override
  void initState(){
    _acc_ofController = TextEditingController(text: widget.pwm == null ? '' : widget.pwm!.acc_of);
    _userController = TextEditingController(text: widget.pwm == null ? '' : widget.pwm!.user);
    _passController = TextEditingController(text: widget.pwm == null ? '' : widget.pwm!.pass);
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
                  child: Text('Insert or Update Password', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xffF06292)),),
                ),
              ),
              const SizedBox(height: 100,),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 350,
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
                      const Text('Your Account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 50,),
                      TextFormField( 
                        controller: _acc_ofController,
                        decoration: const InputDecoration(
                          labelText: 'Platform',
                          hintText: 'ex. Google',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        controller: _userController,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          hintText: 'ex. MyAccount_1',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        controller: _passController,
                        obscureText: _isObsecure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'ex. PwManager123',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(_isObsecure ? Icons.visibility : Icons.visibility_off,),
                            onPressed: (){
                                setState(() {
                                  _isObsecure = !_isObsecure;
                                });
                              },
                          )
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff9C254D))
                        ),
                        onPressed: () async {
                          if (widget.pwm != null) {
                            final pwm = Pwm(
                              id: widget.pwm!.id,
                              id_user: id_user,
                              acc_of: _acc_ofController!.text,
                              user: _userController!.text,
                              pass: _passController!.text
                            );
                            Provider.of<DbProvider>(context, listen: false).updatePwm(pwm, id_user);
                          }else{
                            final pwm = Pwm(
                              id_user: id_user,
                              acc_of: _acc_ofController!.text,
                              user: _userController!.text,
                              pass: _passController!.text
                            );
                            Provider.of<DbProvider>(context, listen: false).insertPwm(pwm, id_user);
                          }
                          Navigator.pop(context);
                        },child: const Text('Save Account'),
                      ),
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
          onTap: onItemTapped,
          backgroundColor: const Color(0xff9C254D),
          selectedItemColor: const Color(0xffF06292),
          unselectedItemColor: const Color(0xffF06292),
        ),
      );
  }
}