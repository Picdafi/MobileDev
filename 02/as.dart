import 'dart:io';
void main(List<String> args) {
  print("Tuliskan nama : ");

  String nama = stdin.readLineSync();

  print("Hai . ${nama}");
  print("Selesai");
}

//asynchronous operation dijalankan pada scope, terpisah dari scope aplikasi utama, 
//readLineSync : 
//stdin : menunggu inputan