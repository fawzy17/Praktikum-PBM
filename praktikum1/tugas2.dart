void main(List<String> args) {
  String asterik = '*';
  for (int i = 1; i < 5; i++){
    for (int j = i; j < 5; j++){
      print(asterik);
      asterik = asterik + '*';
    }
  }
}