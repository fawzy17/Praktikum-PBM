class Pwm {
  late int? id;
  // ignore: non_constant_identifier_names
  late int id_user;
  // ignore: non_constant_identifier_names
  late String acc_of;
  late String user;
  late String pass;

  Pwm({
    this.id,
    // ignore: non_constant_identifier_names
    required this.id_user,
    // ignore: non_constant_identifier_names
    required this.acc_of,
    required this.user,
    required this.pass,
  });

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'id_user': id_user,
      'acc_of': acc_of,
      'user': user,
      'pass': pass,
    };
  }

  Pwm.fromMap(Map<String, dynamic> map){
    id = map['id'];
    id_user = map['id_user'];
    acc_of = map['acc_of'];
    user = map['user'];
    pass = map['pass'];
  }
}