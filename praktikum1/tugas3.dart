void main(List<String> args) {
  List<String> matkul = ['PBM', 'Framework', 'Datmin'];
  Map<String, double> jadwal = {
    matkul[0] : 13.45,
    matkul[1] : 10.15,
    matkul[2] : 12.45,
  };
  Set<String> setMatkul = {matkul[0], matkul[1], matkul[2]}; 

  print('Matkul yang disukai');
  print(matkul[0]);
  print('Jam matkul Framework');
  print(jadwal[matkul[1]]);
  print('Semua matkul yang ada');
  print(setMatkul);
}