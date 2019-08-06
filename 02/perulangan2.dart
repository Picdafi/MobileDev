void main(List<String> args) {
  var angka=5;
  var faktor=1;

  while (angka>=1) {
    faktor = faktor * angka;
    angka--;
  }
  print("Hasilnya adalah $faktor");
}