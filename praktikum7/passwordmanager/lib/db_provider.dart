// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:passwordmanager/database_helper.dart';
import 'package:passwordmanager/pwm.dart';

class DbProvider extends ChangeNotifier{
  late DatabaseHelper _dbHelper;
  List<Pwm> _pwm = [];

  List<Pwm> get pwms => _pwm;

  DbProvider(int? id_user){
    _dbHelper = DatabaseHelper();
    getAllPwm(id_user);
  }

  Future<void> getAllPwm(int? id_user) async{
    _pwm = await _dbHelper.getPwm(id_user);
    notifyListeners();
  }

  
  Future<void> insertPwm(Pwm pwm, int? id_user) async{
    await _dbHelper.insertPwm(pwm);
    getAllPwm(id_user);
  }

  Future<void> deletePwm(int? id, int? id_user) async{
    await _dbHelper.deletePwm(id);
    getAllPwm(id_user);
  }

  Future<void> updatePwm(Pwm pwm, int? id_user) async{
    await _dbHelper.updatePwm(pwm);
    getAllPwm(id_user);
  }


}