// ignore_for_file: camel_case_types

class userActive{
  String username = '';
  String email = '';

  userActive({required this.username, required this.email});

  String get getUsername => username;
  String get getEmail => email;
}