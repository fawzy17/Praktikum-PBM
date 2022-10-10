void main(List<String> args) {
  Map <String, num> ipkmhs = {
    'Ray' : 3.9,
    'Rizky' : 3.78,
    'Fawzy' : 3.8,
    'Zeldriss' : 3.45,
    'Meliodas' : 3.48,
  };

  ipkmhs.forEach((k, v) { 
    if(v >= 3.5){
      print(k);
      print('Cumlaude\n');
    }else{
      print(k);
      print('Tidak Cumlaude\n');
    }
  });
}