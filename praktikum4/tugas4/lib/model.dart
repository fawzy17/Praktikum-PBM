// ignore: camel_case_types
class Database{
  final int id;
  final String model;
  final String merk;
  final String deskripsi;
  final String rating;
  final String foto;


  Database({
    required this.id,
    required this.model,
    required this.merk,
    required this.deskripsi,
    required this.rating,
    required this.foto, 
  });
}

// ignore: non_constant_identifier_names
List<Database> listDatabase = [

  //list T-Shirt
  Database(id: 1, model: 'T-Shirt', merk: 'Kaos Pink', deskripsi: 'Kaos cuco warna kuning bisa bikin lo jadi banci seharian', rating: '4.5', foto: 'asset/img/baju_pink.png'),
  Database(id: 1, model: 'T-Shirt', merk: 'Kaos Keren', deskripsi: 'Kaos yang bisa bikin lu pede dan bikin cool banget setelah pake kaos banci pink', rating: '4.1', foto: 'asset/img/kaos_keren.png'),
  Database(id: 2, model: 'T-Shirt', merk: 'Kaos Animel', deskripsi: 'Kaosnya para wibu yang suka nonton anime terutama fans naruto', rating: '4.6', foto: 'asset/img/kaos_animel.png'),
  Database(id: 3, model: 'T-Shirt', merk: 'Kaos Kuning', deskripsi: 'Kaos pecinta pisang mateng California', rating: '4.2', foto: 'asset/img/kaos_kuning.png'),
  Database(id: 4, model: 'T-Shirt', merk: 'Kaos Custom', deskripsi: 'Kaos yang terserah lu', rating: '4.4', foto: 'asset/img/kaos_custom.png'),
  
  //list Shirt
  Database(id: 1, model: 'Shirt', merk: 'Kemeja Kantor', deskripsi: 'Bajunya orang penting yang suka natapin layar komputer 24/7', rating: '4.8', foto: 'asset/img/kemeja_kantor.png'),
  Database(id: 2, model: 'Shirt', merk: 'Kemeja Pendek', deskripsi: 'Baju kemeja sii tapi lengannya pendek tapi masih bisa lah buat dipake ngampus mah, bisa juga buat ootd an ala anak jaman sekarang', rating: '4.2', foto: 'asset/img/kemeja_pendek.png'),
  Database(id: 3, model: 'Shirt', merk: 'Kemeja Panjang', deskripsi: 'Baju kemeja yang lengannya panjang tapi da sepanjang deskripsinya karena susah juga bikin deskripsi yang panjang yaa', rating: '4.4', foto: 'asset/img/kemeja_panjang.png'),
  Database(id: 4, model: 'Shirt', merk: 'Kemeja Merah', deskripsi: 'Kemeja merah tapi bukan pendukung apalagi anggota pudidi hehe', rating: '4.3', foto: 'asset/img/kemeja_merah.png'),
  
  //list Trouser
  Database(id: 1, model: 'Trouser', merk: 'Celana Kantor', deskripsi: 'Celana formal cocok buat ngantor, nguliah, kalo nguli kurang', rating: '4.4', foto: 'asset/img/celana_kantor.png'),
  Database(id: 2, model: 'Trouser', merk: 'Celana Keren', deskripsi: 'Celana yang bisa bikin lo pede abis ampe urat malu lo putus', rating: '4.5', foto: 'asset/img/celana_keren.png'),
  Database(id: 3, model: 'Trouser', merk: 'Celana Jeans', deskripsi: 'Celana berbahan dasar bubuk abu mayat jin', rating: '4.6', foto: 'asset/img/celana_jeans.png'),
  Database(id: 4, model: 'Trouser', merk: 'Celana Putih', deskripsi: 'Celana yang katanya kalo diliat malem hari dikira pocong', rating: '4.4', foto: 'asset/img/celana_putih.png'),
  
  //list Underwear
  Database(id: 1, model: 'Underwear', merk: 'Daleman Santai', deskripsi: 'Daleman yang sering dipakai bos ketika liburan cuy', rating: '4.6', foto: 'asset/img/daleman_biru.png'),
  Database(id: 2, model: 'Underwear', merk: 'Daleman Keren', deskripsi: 'Daleman yang bikin lo pede pake ini di pantai', rating: '4.5', foto: 'asset/img/daleman_hijau.png'),
  Database(id: 3, model: 'Underwear', merk: 'Daleman Pantai', deskripsi: 'Delaman adem kalo dipake mantai cuy', rating: '4.3', foto: 'asset/img/daleman_orange.png'),
  Database(id: 4, model: 'Underwear', merk: 'Daleman Bagus', deskripsi: 'Daleman yg Bagus udah segitu doang', rating: '4.0', foto: 'asset/img/daleman_bagus.png'),
];