import 'package:flutter/material.dart';

class HalamanNoDua extends StatefulWidget {
  const HalamanNoDua({super.key});

  @override
  State<HalamanNoDua> createState() => _HalamanNoDuaState();
}

class _HalamanNoDuaState extends State<HalamanNoDua> {
  var namaAsli = 'Ray Rizky Fawzy';
  var namaSamaran = 'Escanor';
  var tampilanNama = 'Ray Rizky Fawzy';

  var textButtonSA = 'Switch to Anonymous';
  var textButtonSO = 'Switch to Original';
  var tampilanTextButton = 'Switch to Anonymous';

  void ubahNama(){
    setState(() {
      if(tampilanNama == namaAsli){
        tampilanNama = namaSamaran;
        tampilanTextButton = textButtonSO;
      }else{
        tampilanNama = namaAsli;
        tampilanTextButton = textButtonSA;
      } 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas No 2 Praktikum 2'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(tampilanNama, style: Theme.of(context).textTheme.headline4,),
            ElevatedButton.icon(onPressed: ubahNama, icon: const Icon(Icons.swap_horiz_sharp), label: Text(tampilanTextButton))
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          },
        tooltip: 'Pindah halaman',
        child: const Icon(Icons.navigate_before_sharp),
      ),
    );
  }
}