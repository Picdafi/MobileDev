void main(List<String> args) {
Set awarna = new Set.from(["merah","kuning","hijau"]);
Set bwarna = new Set.from(["kuning","hijau","jingga"]);

Set abwarna = bwarna.intersection(awarna); // menghasilkan kuning dan hijau

for(String warna in abwarna) {
  print(warna);
}  
}

// set bisa menentukan tipe elemen yang bisa di isi kedalamnya pada saat
// set diciptakan karena elemen tidak memiliki index
// jadi yang perlu kita lakukan adalah melakukan iterasi set dengan
// menggunakan for 
//intersection() mengembalikan elemen yang sama dari dua buah set

