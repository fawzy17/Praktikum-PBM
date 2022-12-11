
import 'package:passwordmanager/pwm.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._internal(){
    _databaseHelper = this;

  }
  
  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  // ignore: unused_field
  static late Database _database;

  Future<Database> get database async {
    return _database = await _initializeDb();
  }

  static const String _tableName = 'pwManager';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'pwManager_db.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, id_user INTEGER, acc_of TEXT, user TEXT, pass TEXT)'''
        );
      },
      version: 1,
    );
    return db;
  }

  Future <void> insertPwm(Pwm pwm) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      pwm.toMap()
    );
  }

  Future<void> deletePwm(int? id) async {
    final Database db = await database;
    await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id]
    );
  }

  Future <void> updatePwm(Pwm pwm) async{
    final Database db = await database;
    await db.update(
      _tableName,
      pwm.toMap(),
      where: 'id = ?',
      whereArgs: [pwm.id]
    );
  }

  // ignore: non_constant_identifier_names
  Future<List<Pwm>> getPwm(int? id_user) async{
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(
      _tableName,
      where: 'id_user = ?',
      whereArgs: [id_user]
    );
    return result.map((e) => Pwm.fromMap(e)).toList();
  }
}