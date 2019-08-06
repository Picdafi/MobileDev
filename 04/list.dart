void main() {
  List salam = ["pagi", "siang", "sore", "malam"];
  print('Jumlah Elemen / Panjang List : ${salam.length}');

  for (int i=0; i < salam.length; i++) {
    print(salam[i]);
  }
}

//variabel i digunakan untuk mengakses elemen dari list
//dart juga mempunya perulangan dalam bentuk lain yaitu 
//for in loop atau for each loop

//void main() {
  //List salam = ["pagi", "siang", "sore", "malam"];
  //print('Jumlah Elemen / Panjang List : ${salam.length}');

  //for (String asalam in salam) {
    //print(asalam);
  //}
//}

//variabel asalam bertipe string, karena data yang diakses tipe string.
//nilai dari asalam adalah data yang ada di salam. 